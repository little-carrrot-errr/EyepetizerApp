//
//  String+Eye.swift
//  EyepetizerApp
//
//   14.
//     
//

import Foundation

extension String {
    /// 获取字符串长度
    var length : Int {
        return characters.count
    }
}

extension Int {
    static func durationToTimer(duration : Int) -> String {
        return "\(String(format: "%02d", duration/60))' \(String(format: "%02d", duration%60))\""
    }
}