//
//  IntExt.swift
//  Swiftext
//
//  Created by Sua Le on 6/17/17.
//  Copyright © 2017 Sua Le. All rights reserved.
//

import Foundation

extension Int {
    static func random(lower: Int = min, upper: Int = max) -> Int
    {
        guard lower <= upper else
        {
            return lower
        }
        var randomNum: Int = 0
        arc4random_buf(&randomNum, MemoryLayout<UInt>.size)
        if randomNum < 0
        {
            randomNum = -1 * randomNum
        }
        return randomNum % (upper - lower) + lower
    }
}
