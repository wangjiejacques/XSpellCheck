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
            range = NSSpellChecker.shared.checkSpelling(of: self, startingAt: range.upperBound, language: "en_US", wrap: false, inSpellDocumentWithTag: 0, wordCount: nil)
            if range.length == 0 {
                break
            }
            ranges.append(range)
        }
        return ranges
    }

}
