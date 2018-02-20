//
//  SpellCheckTests.swift
//  SpellCheckTests
//
//  Created by WANG Jie on 14/02/2018.
//  Copyright © 2018 jwang123. All rights reserved.
//

import XCTest
//@testable import SpellCheckImpl

class SpellCheckTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testMisspelled() {
        let sentence = "func hello worl method() -> completioin {"
        let ranges = sentence.misspelled
        XCTAssertEqual(ranges.count, 2)
    }

}
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
