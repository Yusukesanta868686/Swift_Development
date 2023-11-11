//string-1
var s1 = "abc"
let s2 = "def"

let s = """
複数行の入力
"""
print(s)

var s3 = ""
print(s3.isEmpty)
print(s.isEmpty)
print(s3.count)
print(s.count)

let name = "Yusuke"
let s4 = "Hello, \(name)"
print(s4)

let value = 5
let s5 = "\(value) + 2 は、\(value + 2)です"
print(s5)

//string-2
var greet = "Hello"
let name2 = "Yusuke"

let s6 = greet + ", " + name2 + "!"
print(s6)

greet += ","
greet += name2
greet += "!"
print(greet)

let message = "My name is Yusuke.  "
print(message.split(separator: " "))
print(message.split(separator: " ", maxSplits: 1))

import Foundation
let message2 = "My name is Yusuke  "
let splitResult1 = message2.split(separator: " ")
let splitResult2 = message.components(separatedBy: " ")
print(splitResult1)
print(type(of: splitResult1))
print(splitResult2)
print(type(of: splitResult2))