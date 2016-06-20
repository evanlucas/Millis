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

  func testIntLong() {
    let millisecond = ms(1, displayType: .long)
    XCTAssertEqual(millisecond, "1 ms")
    let second = ms(1000, displayType: .long)
    XCTAssertEqual(second, "1 second")
    let seconds = ms(2000, displayType: .long)
    XCTAssertEqual(seconds, "2 seconds")
    let minute = ms(1000 * 60, displayType: .long)
    XCTAssertEqual(minute, "1 minute")
    let minutes = ms(1000 * 60 * 2, displayType: .long)
    XCTAssertEqual(minutes, "2 minutes")
    let hour = ms(1000 * 60 * 60, displayType: .long)
    XCTAssertEqual(hour, "1 hour")
    let hours = ms(1000 * 60 * 60 * 2, displayType: .long)
    XCTAssertEqual(hours, "2 hours")
    let day = ms(1000 * 60 * 60 * 24, displayType: .long)
    XCTAssertEqual(day, "1 day")
    let days = ms(1000 * 60 * 60 * 24 * 2, displayType: .long)
    XCTAssertEqual(days, "2 days")
    let another = ms(1000000, displayType: .long)
    XCTAssertEqual(another, "16 minutes")
    let m = ms(234234234, displayType: .long)
    XCTAssertEqual(m, "2 days")
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

  func testInt32Long() {
    let millisecond = ms(Int32(1), displayType: .long)
    XCTAssertEqual(millisecond, "1 ms")
    let second = ms(Int32(1000), displayType: .long)
    XCTAssertEqual(second, "1 second")
    let minute = ms(Int32(1000 * 60), displayType: .long)
    XCTAssertEqual(minute, "1 minute")
    let hour = ms(Int32(1000 * 60 * 60), displayType: .long)
    XCTAssertEqual(hour, "1 hour")
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

  func testInt64Long() {
    let millisecond = ms(Int64(1), displayType: .long)
    XCTAssertEqual(millisecond, "1 ms")
    let second = ms(Int64(1000), displayType: .long)
    XCTAssertEqual(second, "1 second")
    let minute = ms(Int64(1000 * 60), displayType: .long)
    XCTAssertEqual(minute, "1 minute")
    let hour = ms(Int64(1000 * 60 * 60), displayType: .long)
    XCTAssertEqual(hour, "1 hour")
  }
}
