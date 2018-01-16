//
//  Extensions.swift
//  Template
//
//  Created by Iain Coleman on 15/01/2018.
//  Copyright © 2018 Iain Coleman. All rights reserved.
//

import Foundation

extension String {
    //Removes all whitespace from a string (not just leading/trailing
    func removingWhitespaces() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
}

extension String {
    //Makes first character of a string upper case
    var firstUppercased: String {
        guard let first = first else { return "" }
        return String(first).uppercased() + dropFirst()
    }
}
