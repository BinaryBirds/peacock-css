//
//  Variant.swift
//  Peacock
//
//  Created by Tibor Bodecs on 2021. 01. 31..
//

import Foundation

struct Variant {

    enum Name {
        case full
        case xl
        case l
        case normal
        case s
        case xs
        case zero
        case auto
        case custom(String)
    }

    let name: Name
    let value: String

    var suffix: String {
        switch name {
        case .full: return "-full"
        case .xl: return "-xl"
        case .l: return "-l"
        case .normal: return ""
        case .s: return "-s"
        case .xs: return "-xs"
        case .zero: return "-zero"
        case .auto: return "-auto"
        case .custom(let value): return "-" + value
        }
    }

    static func full(_ value: String) -> Variant { .init(name: .full, value: value) }
    static func xl(_ value: String) -> Variant { .init(name: .xl, value: value) }
    static func l(_ value: String) -> Variant { .init(name: .l, value: value) }
    static func normal(_ value: String) -> Variant { .init(name: .normal, value: value) }
    static func s(_ value: String) -> Variant { .init(name: .s, value: value) }
    static func xs(_ value: String) -> Variant { .init(name: .xs, value: value) }
    static func zero(_ value: String) -> Variant { .init(name: .zero, value: value) }
    static func auto(_ value: String) -> Variant { .init(name: .auto, value: value) }
    static func custom(_ name: String, _ value: String) -> Variant { .init(name: .custom(name), value: value) }
}
