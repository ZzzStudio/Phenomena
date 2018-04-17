//
//  Log.swift
//  Phenomena
//
//  Created by toedwy on 2018/3/23.
//  Copyright © 2018年 Zzz Studio. All rights reserved.
//

import Foundation

/// use custom log.debug() or log.release()
/// to print messages instead of system print()
/// determine whether the info is logged during DEBUG
/// by controlling the 'verbose' variable
public let log = Log.self

public struct Log {

    static let verbose = false

    private static func _formatedInfoString(file: String, function: String, line: Int) -> String {
        guard let fileName = file.components(separatedBy: "/").last else {
            return ""
        }
        return "[📩] \(fileName) - \(function) - \(line) [✉️]"
    }

    public static func release(_ items: Any..., file: String = #file, function: String = #function, line: Int = #line) {
        var message = "[🚀] "
        for item in items {
            message.append("\(item) ")
        }
        message.remove(at: message.index(before: message.endIndex))
        print(_formatedInfoString(file: file, function: function, line: line))
        print(message)
    }

    public static func debug(_ message: @autoclosure () -> Any, file: String = #file, function: String = #function, line: Int = #line) {
        #if DEBUG
            if verbose {
                print(_formatedInfoString(file: file, function: function, line: line))
            }
            print("[🚧] \(message())")
        #endif
    }

    public static func debug(_ items: Any..., file: String = #file, function: String = #function, line: Int = #line) {
        #if DEBUG
            var message = "[🚧] "
            for item in items {
                message.append("\(item) ")
            }
            message.remove(at: message.index(before: message.endIndex))
            if verbose {
                print(_formatedInfoString(file: file, function: function, line: line))
            }
            print(message)
        #endif
    }

}
