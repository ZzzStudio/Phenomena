//
//  RealmBasicTypeObject.swift
//  Phenomena
//
//  Created by toedwy on 2018/2/7.
//Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation
import RealmSwift

class DoubleObject: Object {
    @objc dynamic var value: Double = 0.0
}

class IntObject: Object {
    @objc dynamic var value: Int = 0
}

class StringObject: Object {
    @objc dynamic var value: String = ""
}

