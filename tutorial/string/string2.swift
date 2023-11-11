import Foundation

//string-3
var s = "What's your favorite color?"

print(s.replacingOccurrences(of: "color", with: "food"))
print(s.replacingOccurrences(of: "r", with: "R"))

print(s.contains("color"))
print(s.contains("food"))

//string-4
let s1 = "\""
let s2 = "\\"
print(s1, s2)

print("aaa\tbbb\tccc")
print("-------------")
print("xxx\nyyy\r\nzzz")

let s3 = "  Test    "
let trimmed = s3.trimmingCharacters(in: .whitespaces)

print("[\(s3)]")
print("[\(trimmed)]")

//string-5
let s4 = "ABCDEFGHIJ"
let sub1 = String(s4.prefix(5))
print(sub1)
let sub2 = String(s4.suffix(15))
print(sub2)

let start = 3
let startIdx = s4.index(s4.startIndex, offsetBy: start, limitedBy: s4.endIndex) ?? s4.endIndex
let sub = String(s4[startIdx...])

print("sub = \(sub)")

let start2 = 3
let end2 = 6

var sub3 = ""

if start2 > end2 {
    sub3 = " "
} else {
    let startIdx2 = s4.index(s4.startIndex, offsetBy: start, limitedBy: s4.endIndex) ?? s4.endIndex
    let endIdx2 = s3.index(s4.startIndex, offsetBy: end2 + 1, limitedBy: s4.endIndex) ?? s4.endIndex
    sub3 = String(s4[startIdx2..<endIdx2])
}

print(sub3)
