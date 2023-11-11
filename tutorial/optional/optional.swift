let value: Int? = 100

if value != nil{
    print("value = \(value!)")
} else{
    print( "No value exists.")
}

print("-----------------")

if let i = value{
    print("value = \(i)")
    print(type(of: value))
    print(type(of: i))
} else{
    print("No value exists.")
}

print("-----------------")
let u = value
print(u)

print("-----------------")

func greet(name: String?) -> String{

    guard let name = name else{
        return "No name"
    }

    return "Hello, \(name)"
}

print(greet(name: nil))
print(greet(name: "Yusuke"))

print("-----------------")
let s:String? = "abcde"

if s?.contains("c") == true{
    print("c exists.")
}

print("------------------")

let input = "ABC"
let i = Int(input)
print(i ?? "Invalid input")