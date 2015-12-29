//
//  MillisTests.swift
//  MillisTests
//
//  Created by Evan Lucas on 12/29/15.
//  Copyright © 2015 Evan Lucas. All rights reserved.
//

import XCTest
@testable import Millis

class MillisTests: XCTestCase {
    
  override func setUp() {
    super.setUp()
  }
    
  override func tearDown() {
    super.tearDown()
  }
    
  func testInt() {
    let millisecond = ms(1)
    XCTAssertEqual(millisecond, "1ms")
    let second = ms(1000)
    XCTAssertEqual(second, "1s")
    let minute = ms(1000 * 60)
    XCTAssertEqual(minute, "1m")
    let hour = ms(1000 * 60 * 60)
    XCTAssertEqual(hour, "1h")
    let day = ms(1000 * 60 * 60 * 24)
    XCTAssertEqual(day, "1d")
    let another = ms(1000000)
    XCTAssertEqual(another, "16m")
  }
  
  func testInt32() {
    let millisecond = ms(Int32(1))
    XCTAssertEqual(millisecond, "1ms")
    let second = ms(Int32(1000))
    XCTAssertEqual(second, "1s")
    let minute = ms(Int32(1000 * 60))
    XCTAssertEqual(minute, "1m")
    let hour = ms(Int32(1000 * 60 * 60))
    XCTAssertEqual(hour, "1h")
  }
  
  func testInt64() {
    let millisecond = ms(Int64(1))
    XCTAssertEqual(millisecond, "1ms")
    let second = ms(Int64(1000))
    XCTAssertEqual(second, "1s")
    let minute = ms(Int64(1000 * 60))
    XCTAssertEqual(minute, "1m")
    let hour = ms(Int64(1000 * 60 * 60))
    XCTAssertEqual(hour, "1h")
  }
}
