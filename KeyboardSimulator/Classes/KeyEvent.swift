//
//  KeyEvent.swift
//  KeyboardSimulator
//
//  Created by naru on 2018/07/03.
//  Copyright © 2018 Timers-inc. All rights reserved.
//

import Foundation

/// Represent keyboard event.
struct KeyEvent {
    
    let code: CGKeyCode
    
    let keepDowns: [CGKeyCode]
    
    init(code: CGKeyCode, keepDowns: [CGKeyCode] = []) {
        self.code = code
        self.keepDowns = keepDowns
    }
    
    var shifted: KeyEvent {
        return KeyEvent(code: self.code, keepDowns: [KeyEvent.Shift.code])
    }
    
    static let a = KeyEvent(code: 0x00)
    static let s = KeyEvent(code: 0x01)
    static let d = KeyEvent(code: 0x02)
    static let f = KeyEvent(code: 0x03)
    static let h = KeyEvent(code: 0x04)
    static let g = KeyEvent(code: 0x05)
    static let z = KeyEvent(code: 0x06)
    static let x = KeyEvent(code: 0x07)
    static let c = KeyEvent(code: 0x08)
    static let v = KeyEvent(code: 0x09)
    static let b = KeyEvent(code: 0x0B)
    static let q = KeyEvent(code: 0x0C)
    static let w = KeyEvent(code: 0x0D)
    static let e = KeyEvent(code: 0x0E)
    static let r = KeyEvent(code: 0x0F)
    static let y = KeyEvent(code: 0x10)
    static let t = KeyEvent(code: 0x11)
    static let o = KeyEvent(code: 0x1F)
    static let u = KeyEvent(code: 0x20)
    static let i = KeyEvent(code: 0x22)
    static let p = KeyEvent(code: 0x23)
    static let l = KeyEvent(code: 0x25)
    static let j = KeyEvent(code: 0x26)
    static let k = KeyEvent(code: 0x28)
    static let n = KeyEvent(code: 0x2D)
    static let m = KeyEvent(code: 0x2E)
    
    static let A = KeyEvent.a.shifted
    static let S = KeyEvent.s.shifted
    static let D = KeyEvent.d.shifted
    static let F = KeyEvent.f.shifted
    static let H = KeyEvent.h.shifted
    static let G = KeyEvent.g.shifted
    static let Z = KeyEvent.z.shifted
    static let X = KeyEvent.x.shifted
    static let C = KeyEvent.c.shifted
    static let V = KeyEvent.v.shifted
    static let B = KeyEvent.b.shifted
    static let Q = KeyEvent.q.shifted
    static let W = KeyEvent.w.shifted
    static let E = KeyEvent.e.shifted
    static let R = KeyEvent.r.shifted
    static let Y = KeyEvent.y.shifted
    static let T = KeyEvent.t.shifted
    static let O = KeyEvent.o.shifted
    static let U = KeyEvent.u.shifted
    static let I = KeyEvent.i.shifted
    static let P = KeyEvent.p.shifted
    static let L = KeyEvent.l.shifted
    static let J = KeyEvent.j.shifted
    static let K = KeyEvent.k.shifted
    static let N = KeyEvent.n.shifted
    static let M = KeyEvent.m.shifted
    
    static let _1 = KeyEvent(code: 0x12)
    static let _2 = KeyEvent(code: 0x13)
    static let _3 = KeyEvent(code: 0x14)
    static let _4 = KeyEvent(code: 0x15)
    static let _5 = KeyEvent(code: 0x17)
    static let _6 = KeyEvent(code: 0x16)
    static let _7 = KeyEvent(code: 0x1A)
    static let _8 = KeyEvent(code: 0x1C)
    static let _9 = KeyEvent(code: 0x19)
    static let _0 = KeyEvent(code: 0x1D)
    
    static let Equal        = KeyEvent(code: 0x18)
    static let Minus        = KeyEvent(code: 0x1B)
    static let RightBracket = KeyEvent(code: 0x1E)
    static let LeftBracket  = KeyEvent(code: 0x21)
    static let Quote        = KeyEvent(code: 0x27)
    static let Semicolon    = KeyEvent(code: 0x29)
    static let Backslash    = KeyEvent(code: 0x2A)
    static let Comma        = KeyEvent(code: 0x2B)
    static let Slash        = KeyEvent(code: 0x2C)
    static let Period       = KeyEvent(code: 0x2F)
    static let Grave        = KeyEvent(code: 0x32)
    
    static let Return        = KeyEvent(code: 0x24)
    static let Tab           = KeyEvent(code: 0x30)
    static let Space         = KeyEvent(code: 0x31)
    static let Delete        = KeyEvent(code: 0x33)
    static let Escape        = KeyEvent(code: 0x35)
    static let Command       = KeyEvent(code: 0x37)
    static let Shift         = KeyEvent(code: 0x38)
    static let CapsLock      = KeyEvent(code: 0x39)
    static let Option        = KeyEvent(code: 0x3A)
    static let Control       = KeyEvent(code: 0x3B)
    static let RightCommand  = KeyEvent(code: 0x36)
    static let RightShift    = KeyEvent(code: 0x3C)
    static let RightOption   = KeyEvent(code: 0x3D)
    static let RightControl  = KeyEvent(code: 0x3E)
    static let Function      = KeyEvent(code: 0x3F)
    static let F17           = KeyEvent(code: 0x40)
    static let VolumeUp      = KeyEvent(code: 0x48)
    static let VolumeDown    = KeyEvent(code: 0x49)
    static let Mute          = KeyEvent(code: 0x4A)
    static let F18           = KeyEvent(code: 0x4F)
    static let F19           = KeyEvent(code: 0x50)
    static let F20           = KeyEvent(code: 0x5A)
    static let F5            = KeyEvent(code: 0x60)
    static let F6            = KeyEvent(code: 0x61)
    static let F7            = KeyEvent(code: 0x62)
    static let F3            = KeyEvent(code: 0x63)
    static let F8            = KeyEvent(code: 0x64)
    static let F9            = KeyEvent(code: 0x65)
    static let F11           = KeyEvent(code: 0x67)
    static let F13           = KeyEvent(code: 0x69)
    static let F16           = KeyEvent(code: 0x6A)
    static let F14           = KeyEvent(code: 0x6B)
    static let F10           = KeyEvent(code: 0x6D)
    static let F12           = KeyEvent(code: 0x6F)
    static let F15           = KeyEvent(code: 0x71)
    static let Help          = KeyEvent(code: 0x72)
    static let Home          = KeyEvent(code: 0x73)
    static let PageUp        = KeyEvent(code: 0x74)
    static let ForwardDelete = KeyEvent(code: 0x75)
    static let F4            = KeyEvent(code: 0x76)
    static let End           = KeyEvent(code: 0x77)
    static let F2            = KeyEvent(code: 0x78)
    static let PageDown      = KeyEvent(code: 0x79)
    static let F1            = KeyEvent(code: 0x7A)
    static let LeftArrow     = KeyEvent(code: 0x7B)
    static let RightArrow    = KeyEvent(code: 0x7C)
    static let DownArrow     = KeyEvent(code: 0x7D)
    static let UpArrow       = KeyEvent(code: 0x7E)
    
    static let Hyphen       = KeyEvent.Minus
    static let VerticalLine = KeyEvent.Backslash.shifted
    static let Plus         = KeyEvent.Equal.shifted
}

extension KeyEvent {
    
    init?(character: Character) {
        switch character {
        case "a":
            self.init(code: KeyEvent.a.code)
        case "s":
            self.init(code: KeyEvent.s.code)
        case "d":
            self.init(code: KeyEvent.d.code)
        case "f":
            self.init(code: KeyEvent.f.code)
        case "h":
            self.init(code: KeyEvent.h.code)
        case "g":
            self.init(code: KeyEvent.g.code)
        case "z":
            self.init(code: KeyEvent.z.code)
        case "x":
            self.init(code: KeyEvent.x.code)
        case "c":
            self.init(code: KeyEvent.c.code)
        case "v":
            self.init(code: KeyEvent.v.code)
        case "b":
            self.init(code: KeyEvent.b.code)
        case "q":
            self.init(code: KeyEvent.q.code)
        case "w":
            self.init(code: KeyEvent.w.code)
        case "e":
            self.init(code: KeyEvent.e.code)
        case "r":
            self.init(code: KeyEvent.r.code)
        case "y":
            self.init(code: KeyEvent.y.code)
        case "t":
            self.init(code: KeyEvent.t.code)
        case "o":
            self.init(code: KeyEvent.o.code)
        case "u":
            self.init(code: KeyEvent.u.code)
        case "i":
            self.init(code: KeyEvent.i.code)
        case "p":
            self.init(code: KeyEvent.p.code)
        case "l":
            self.init(code: KeyEvent.l.code)
        case "j":
            self.init(code: KeyEvent.j.code)
        case "k":
            self.init(code: KeyEvent.k.code)
        case "n":
            self.init(code: KeyEvent.n.code)
        case "m":
            self.init(code: KeyEvent.m.code)
        case "A":
            self.init(code: KeyEvent.a.code, keepDowns: [KeyEvent.Shift.code])
        case "S":
            self.init(code: KeyEvent.s.code, keepDowns: [KeyEvent.Shift.code])
        case "D":
            self.init(code: KeyEvent.d.code, keepDowns: [KeyEvent.Shift.code])
        case "F":
            self.init(code: KeyEvent.f.code, keepDowns: [KeyEvent.Shift.code])
        case "H":
            self.init(code: KeyEvent.h.code, keepDowns: [KeyEvent.Shift.code])
        case "G":
            self.init(code: KeyEvent.g.code, keepDowns: [KeyEvent.Shift.code])
        case "Z":
            self.init(code: KeyEvent.z.code, keepDowns: [KeyEvent.Shift.code])
        case "X":
            self.init(code: KeyEvent.x.code, keepDowns: [KeyEvent.Shift.code])
        case "C":
            self.init(code: KeyEvent.c.code, keepDowns: [KeyEvent.Shift.code])
        case "V":
            self.init(code: KeyEvent.v.code, keepDowns: [KeyEvent.Shift.code])
        case "B":
            self.init(code: KeyEvent.b.code, keepDowns: [KeyEvent.Shift.code])
        case "Q":
            self.init(code: KeyEvent.q.code, keepDowns: [KeyEvent.Shift.code])
        case "W":
            self.init(code: KeyEvent.w.code, keepDowns: [KeyEvent.Shift.code])
        case "E":
            self.init(code: KeyEvent.e.code, keepDowns: [KeyEvent.Shift.code])
        case "R":
            self.init(code: KeyEvent.r.code, keepDowns: [KeyEvent.Shift.code])
        case "Y":
            self.init(code: KeyEvent.y.code, keepDowns: [KeyEvent.Shift.code])
        case "T":
            self.init(code: KeyEvent.t.code, keepDowns: [KeyEvent.Shift.code])
        case "O":
            self.init(code: KeyEvent.o.code, keepDowns: [KeyEvent.Shift.code])
        case "U":
            self.init(code: KeyEvent.u.code, keepDowns: [KeyEvent.Shift.code])
        case "I":
            self.init(code: KeyEvent.i.code, keepDowns: [KeyEvent.Shift.code])
        case "P":
            self.init(code: KeyEvent.p.code, keepDowns: [KeyEvent.Shift.code])
        case "L":
            self.init(code: KeyEvent.l.code, keepDowns: [KeyEvent.Shift.code])
        case "J":
            self.init(code: KeyEvent.j.code, keepDowns: [KeyEvent.Shift.code])
        case "K":
            self.init(code: KeyEvent.k.code, keepDowns: [KeyEvent.Shift.code])
        case "N":
            self.init(code: KeyEvent.n.code, keepDowns: [KeyEvent.Shift.code])
        case "M":
            self.init(code: KeyEvent.m.code, keepDowns: [KeyEvent.Shift.code])
        case "1":
            self.init(code: KeyEvent._1.code)
        case "2":
            self.init(code: KeyEvent._2.code)
        case "3":
            self.init(code: KeyEvent._3.code)
        case "4":
            self.init(code: KeyEvent._4.code)
        case "5":
            self.init(code: KeyEvent._5.code)
        case "6":
            self.init(code: KeyEvent._6.code)
        case "7":
            self.init(code: KeyEvent._7.code)
        case "8":
            self.init(code: KeyEvent._8.code)
        case "9":
            self.init(code: KeyEvent._9.code)
        case "0":
            self.init(code: KeyEvent._0.code)
        case "=":
            self.init(code: KeyEvent.Equal.code)
        case "[":
            self.init(code: KeyEvent.LeftBracket.code)
        case "]":
            self.init(code: KeyEvent.RightBracket.code)
        case "'":
            self.init(code: KeyEvent.Quote.code)
        case ";":
            self.init(code: KeyEvent.Semicolon.code)
        case "\\":
            self.init(code: KeyEvent.Backslash.code)
        case ",":
            self.init(code: KeyEvent.Comma.code)
        case "/":
            self.init(code: KeyEvent.Slash.code)
        case ".":
            self.init(code: KeyEvent.Period.code)
        case "`":
            self.init(code: KeyEvent.Grave.code)
        case "\t":
            self.init(code: KeyEvent.Tab.code)
        case " ":
            self.init(code: KeyEvent.Space.code)
        case "-":
            self.init(code: KeyEvent.Minus.code)
        case "_":
            self.init(code: KeyEvent.Minus.code, keepDowns: [KeyEvent.Shift.code])
        case "|":
            self.init(code: KeyEvent.Backslash.code, keepDowns: [KeyEvent.Shift.code])
        case "+":
            self.init(code: KeyEvent.Equal.code, keepDowns: [KeyEvent.Shift.code])
        default:
            return nil
        }
    }
    
    /// Create key events from each characters included in applied string.
    ///
    /// Character cannot converted will be ignored.
    ///
    /// - parameters:
    ///   - string: string to convert key events
    /// - returns: key events
    static func events(string: String) -> [KeyEvent] {
        return string.compactMap(KeyEvent.init)
    }
}
