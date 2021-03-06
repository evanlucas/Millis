//
//  Millis.swift
//  Millis
//
//  Created by Evan Lucas on 12/29/15.
//  Copyright © 2015 Evan Lucas. All rights reserved.
//
//  Based on the code from https://github.com/rauchg/ms.js
//

import Foundation

let S = 1000
let M = S * 60
let H = M * 60
let D = H * 24
let Y = D * 365

let s = Int64(S)
let m = Int64(M)
let h = Int64(H)
let d = Int64(D)

public enum MillisDisplayType: UInt8 {
  case short = 0
  case long
}

/// Returns a string representing a short, human
/// readable version of the _value_ in milliseconds
///
/// - parameter value:       The number in milliseconds
/// - parameter displayType: Short or long output
///
/// - returns: String
public func ms(_ value:Int, displayType:MillisDisplayType = .short) -> String {
  return ms(Int64(value), displayType: displayType)
}

/// Returns a string representing a short, human
/// readable version of the _value_ in milliseconds
///
/// - parameter value:       The number in milliseconds
/// - parameter displayType: Short or long output
///
/// - returns: String
public func ms(_ value:Int32, displayType:MillisDisplayType = .short) -> String {
  return ms(Int64(value), displayType: displayType)
}

/// Returns a string representing a short, human
/// readable version of the _value_ in milliseconds
///
/// - parameter value:       The number in milliseconds
/// - parameter displayType: Short or long output
///
/// - returns: String
public func ms(_ value:Int64, displayType:MillisDisplayType = .short) -> String {
  let val = Int64(value)

  if val >= d {
    let o = val / d
    if displayType == .long {
      return getLongVal(o, str: "day")
    }
    return String(o) + "d"
  }

  if val >= h {
    let o = val / h
    if displayType == .long {
      return getLongVal(o, str: "hour")
    }
    return String(o) + "h"
  }

  if val >= m {
    let o = val / m
    if displayType == .long {
      return getLongVal(o, str: "minute")
    }
    return String(o) + "m"
  }

  if val >= s {
    let o = val / s
    if displayType == .long {
      return getLongVal(o, str: "second")
    }
    return String(o) + "s"
  }

  if displayType == .long {
    return String(val) + " ms"
  }
  return String(val) + "ms"
}

func getLongVal(_ val:Int64, str:String) -> String {
  if val == 1 {
    return "1 \(str)"
  }

  return String(val) + " \(str)s"
}
