//
//  Color.swift
//  Peacock
//
//  Created by Tibor Bodecs on 2021. 01. 31..
//

import Foundation

struct Color {
    let name: String
    let value: String
    
    var suffix: String {
        if name.isEmpty {
            return ""
        }
        return "-" + name
    }
}
