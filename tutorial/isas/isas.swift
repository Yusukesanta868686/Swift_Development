let value: Any = "String"

if value is String{
    print("value is String")
} else {
    print("value is not String")
}

let val1 = value as? String
print(type(of: val1))

let val2 = value as? Int
print(type(of: val2))