//
//  Double+Phenomena.swift
//  Phenomena
//
//  Created by toedwy on 2018/3/19.
//  Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
