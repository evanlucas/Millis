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

/// Returns a string representing a short, human
/// readable version of the _value_ in milliseconds
///
/// - Parameters:
///     - value: The input value in milliseconds
///
/// - Returns: A string
public func ms(value:Int) -> String {
  return ms(Int64(value))
}

public func ms(value:Int32) -> String {
  return ms(Int64(value))
}

public func ms(value:Int64) -> String {
  let val = Int64(value)
  
  if val >= d {
    return String(val / d) + "d"
  }
  
  if val >= h {
    return String(val / h) + "h"
  }
  
  if val >= m {
    return String(val / m) + "m"
  }
  
  if val >= s {
    return String(val / s) + "s"
  }
  
  return String(val) + "ms"
}