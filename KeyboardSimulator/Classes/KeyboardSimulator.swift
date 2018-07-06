//
//  KeyboardSimulator.swift
//  KeyboardSimulator
//
//  Created by Naruki Chigira on 2018/07/03.
//  Copyright © 2018年 Timers-inc. All rights reserved.
//

import Foundation

class KeyboardSimulator {
    
    /// キーダウン
    static func down(key: CGKeyCode) {
        DispatchQueue.main.async {
            let source = CGEventSource(stateID: CGEventSourceStateID.hidSystemState)
            let event = CGEvent(keyboardEventSource: source, virtualKey: key, keyDown: true)
            event?.post(tap: CGEventTapLocation.cghidEventTap)
        }
    }
    
    /// キーアップ
    static func up(key: CGKeyCode) {
        DispatchQueue.main.async {
            let source = CGEventSource(stateID: CGEventSourceStateID.hidSystemState)
            let event = CGEvent(keyboardEventSource: source, virtualKey: key, keyDown: false)
            event?.post(tap: CGEventTapLocation.cghidEventTap)
        }
    }
    
    /// クリック
    static func click(key: CGKeyCode) {
        down(key: key)
        up(key: key)
    }
    
    /// 他のキーを押しつつクリック
    static func click(key: CGKeyCode, keepDowns: [CGKeyCode]) {
        for keepDown in keepDowns {
            down(key: keepDown)
        }
        waitEvent()
        click(key: key)
        for keepDown in keepDowns {
            up(key: keepDown)
        }
        waitEvent()
    }
    
    /// キーイベントのシミュレート
    static func simulate(event: KeyEvent) {
        click(key: event.code, keepDowns: event.keepDowns)
    }
    
    /// 一連のキーイベントのシミュレート
    static func simulate(events: [KeyEvent]) {
        for event in events {
            simulate(event: event)
        }
    }
    
    private static func waitEvent() {
        Thread.sleep(forTimeInterval: 1.0e-2)
    }
}

