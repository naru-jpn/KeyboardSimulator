//
//  Repeater.swift
//  KeyboardSimulator
//
//  Created by naru on 2018/07/04.
//  Copyright © 2018 Timers-inc. All rights reserved.
//

import Foundation

/// Repeat execution of applied handler.
class Repeater {

    /// Currently running or not.
    private(set) var isRunning: Bool = false
    
    /// Timer to handle event
    private var timer: DispatchSourceTimer?
    
    /// Deadline seconds to run first execution.
    var deadline: TimeInterval = 5.0 {
        didSet {
            if deadline < 5.0 {
                deadline = 5.0
            }
        }
    }
    
    /// Interval seconds between each executions.
    var interval: TimeInterval = 5.0 {
        didSet {
            if interval < 5.0 {
                interval = 5.0
            }
        }
    }
    
    /// Process to execute.
    var handler: (() -> Void)?
    
    /// Run repeater.
    ///
    /// If repeater is already running, do nothing.
    func run() {
        
        guard !isRunning else {
            return
        }
        isRunning = true
        
        let sourceTimer = DispatchSource.makeTimerSource()
        sourceTimer.schedule(deadline: .now() + deadline, repeating: interval)
        sourceTimer.setEventHandler(handler: handler)
        sourceTimer.resume()
        timer = sourceTimer
    }
    
    /// Stop repeater.
    ///
    /// If repeater is already stopped, do nothing.
    func stop() {
        
        guard isRunning else {
            return
        }
        
        timer?.setEventHandler(handler: nil)
        timer?.cancel()
        timer = nil
        
        isRunning = false
    }
}
