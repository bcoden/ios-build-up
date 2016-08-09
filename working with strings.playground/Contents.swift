//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var newStringName = str + " joe"

var newString: NSString = NSString(string: newStringName)

newString.substring(from: newString.length - 3)

newString.substring(with: NSRange(location: 15, length: 3))

// looks for string containers
if newString.contains("joe") {
    print("yes")
}

// splits string
newString.components(separatedBy: " ")

newString.uppercased
newString.lowercased