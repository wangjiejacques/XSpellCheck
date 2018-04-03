//
//  SourceEditorCommand.swift
//  SpellCheckImpl
//
//  Created by WANG Jie on 14/02/2018.
//  Copyright © 2018 jwang123. All rights reserved.
//

import Foundation
import XcodeKit
import AppKit

// the words below should be highlighted.
// wrnog wodsr: spll, helol
class SourceEditorCommand: NSObject, XCSourceEditorCommand {
    
    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void ) -> Void {
        invocation.buffer.selections.removeAllObjects()
        let lines = invocation.buffer.lines
        lines.enumerated().forEach { (lineIndex, element) in
            let line = element as! String
            for range in line.misspelled {
                let start = XCSourceTextPosition(line: lineIndex, column: range.lowerBound)
                let end = XCSourceTextPosition(line: lineIndex, column: range.upperBound)
                let selection = XCSourceTextRange(start: start, end: end)
                invocation.buffer.selections.add(selection)
            }
        }
        completionHandler(nil)
    }


}
