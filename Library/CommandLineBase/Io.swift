//
//  Io.swift
//  CommandLineBase
//
//  Created by Jeff Pickett on 8/25/16.
//  Copyright © 2016 Eleven Fifty Consulting. All rights reserved.
//

import Foundation

class Io {
    func getInput() -> String {
        let keyboard = FileHandle.standardInput
        let inputData = keyboard.availableData
        let str = NSString(data: inputData, encoding:String.Encoding.utf8.rawValue)
        if let string = str {
            return string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        } else {
            return "Invalid input"
        }
    }
    
    func writeMessage(_ message: String) {
        print("\(message)\n")
    }
    
}
