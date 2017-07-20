//
//  DateExt.swift
//  Swiftext
//
//  Created by luan on 7/21/17.
//  Copyright © 2017 Sua Le. All rights reserved.
//

import Foundation
// MARK: Time
let secondOnceMinute = 60
let minuteOnceHour = 60
let hourOnceDay = 24

extension Date {
    var string: String {
        let curDate = Date()
        let denta = curDate.timeIntervalSince(self)
        
        let seconds = lround(denta)
        
        if seconds < secondOnceMinute {
            return "Just now"
        }
        
        let minute = seconds / secondOnceMinute
        if minute < minuteOnceHour {
            return "\(minute) min\(minute > 1 ? "s" : "")"
        }
        
        let hour = minute / minuteOnceHour
        if hour < hourOnceDay {
            return "\(hour) hour\(hour > 1 ? "s" : "")"
        }
        
        let days = hour / hourOnceDay
        let dateFormatter = DateFormatter()
        
        if days == 1 {
            dateFormatter.dateFormat = "'Yesterday at 'h:mma"
            return dateFormatter.string(from: self)
        }
        
        let curComponents = (Calendar.current as NSCalendar).components([.month, .year], from: curDate)
        let components = (Calendar.current as NSCalendar).components([.month, .year], from: self)
        if components.year == curComponents.year && components.month == curComponents.month {
            dateFormatter.dateFormat = "MMM d at h:mma"
        } else if components.year == curComponents.year {
            dateFormatter.dateFormat = "MMM d"
        } else {
            dateFormatter.dateFormat = "MMM d, yyyy"
        }
        
        return dateFormatter.string(from: self)
    }
}
