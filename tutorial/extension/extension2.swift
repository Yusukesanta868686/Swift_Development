import Foundation

extension Date {
    func toString(format: String) -> String{
        let df = DateFormatter()
        df.dateFormat = format
        return df.string(from: self)
    }
}

let date = Date()

let dateStr = date.toString(format: "yyyy-MM-dd HH:mm:ss")

print(dateStr)