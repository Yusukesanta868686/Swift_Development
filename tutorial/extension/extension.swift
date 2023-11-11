import Foundation

let date = Date()

let df = DateFormatter()
df.dateFormat = "yyyy-MM-dd HH:mm:ss"

print(df.string(from: date))