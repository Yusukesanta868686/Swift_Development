import Foundation

let value1 = 1234.5678
print(String(format: "%.0f", value1))
print(String(format: "%.1f", value1))
print(String(format: "%.2f", value1))

let value2: Double = 10
print(String(format: "%.0f", value2))
print(String(format: "%.1f", value2))
print(String(format: "%.2f", value2))


let s1 = "1234.56"
let d1 = Double(s1)
print(d1 ?? "Invalid Input")

let s2 = "ABC"
let d2 = Double(s2)
print(d2 ?? "Invalid Input")

let dateString = "2023-9-27 21:19:50"
let df = DateFormatter()
df.dateFormat = "yyyy-MM-dd HH:mm:ss"

if let date = df.date(from: dateString){
    print(date)
    print(type(of: date))
    print(df.string(from: date))
}