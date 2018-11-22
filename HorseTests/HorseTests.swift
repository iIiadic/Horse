//
//  HorseTests.swift
//  HorseTests
//
//  Created by Vincent Esche on 11/22/18.
//  Copyright © 2018 Vincent Esche. All rights reserved.
//

import XCTest

@testable import Horse

class HorseTests: XCTestCase {
    func testExample() {
        let horse = Horse()
        XCTAssertEqual(horse.description, "🐴")
    }
}
