//
//  ViewController.swift
//  KeyboardSimulator
//
//  Created by Naruki Chigira on 2018/07/03.
//  Copyright © 2018年 Timers-inc. All rights reserved.
//

import Cocoa
import ApplicationServices

class ViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let options = NSDictionary(object: kCFBooleanTrue, forKey: kAXTrustedCheckOptionPrompt.takeUnretainedValue() as NSString) as CFDictionary
        _ = AXIsProcessTrustedWithOptions(options)
    }
    
    let repeater: Repeater = Repeater()
    
    @IBOutlet var commandTextfield: NSTextField!
    
    @IBOutlet var intervalTextfield: NSTextField!
    
    @IBOutlet var button: NSButton!
    
    @IBAction func onButtonTapped(sender: Any) {
        if repeater.isRunning {
            stop()
        } else {
            run()
        }
        updateUI()
    }
    
    // MARK: Control Repeater
    
    private func run() {
        
        guard let interval = Double(intervalTextfield.stringValue) else {
            return
        }
        let events: [KeyEvent] = KeyEvent.events(string: commandTextfield.stringValue)
        
        repeater.interval = interval
        repeater.handler = {
            KeyboardSimulator.simulate(events: events + [KeyEvent.Return])
        }
        repeater.run()
    }
    
    private func stop() {
        repeater.stop()
    }
    
    // MARK: UI
    
    /// Manage UI with repeater state.
    private func updateUI() {
        if repeater.isRunning {
            button.title = "Stop"
            commandTextfield.isEditable = false
            intervalTextfield.isEditable = false
            commandTextfield.backgroundColor = NSColor(deviceWhite: 0.8, alpha: 1.0)
            intervalTextfield.backgroundColor = NSColor(deviceWhite: 0.8, alpha: 1.0)
        } else {
            button.title = "Run"
            commandTextfield.isEditable = true
            intervalTextfield.isEditable = true
            commandTextfield.backgroundColor = NSColor.white
            intervalTextfield.backgroundColor = NSColor.white
        }
    }
}
