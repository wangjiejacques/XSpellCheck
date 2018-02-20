//
//  String+misspell.swift
//  SpellCheckImpl
//
//  Created by WANG Jie on 14/02/2018.
//  Copyright © 2018 jwang123. All rights reserved.
//

import Foundation
import AppKit

extension String {

    var misspelled: [NSRange] {
        var ranges = [NSRange]()
        var range = NSRange()
        while true {
            range = NSSpellChecker.shared.checkSpelling(of: self, startingAt: range.upperBound)
            if range.length == 0 {
                break
            }
            if ranges.contains(range) {
                break
            }
            ranges.append(range)
        }
        return ranges
    }

}
