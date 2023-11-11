func greet(){
    print("hello!")
}

greet()

func greet2(firstname: String, lastname: String){
    print("Hello, \(firstname) \(lastname)")
}

greet2(firstname: "Hirata", lastname: "Yusuke")

func add(value1: Int = 1, value2: Int, value3: Int = 0, value4:Int = 0){
    print(value1 + value2 + value3 + value4)
}

add(value2: 1)

func add2(values: Int...){
    var total = 0
    for v in values{
        total += v
    }
    print("total: \(total)")
}


add2(values: 1, 2, 3, 4, 5, 65)

func splitName(name: String) -> (lastName:String, firstName:String){
    let names = name.split(separator: " ")
    if names.count == 2{
        return (String(names[0]), String(names[1]))
    } else {
        return (" ", " ")
    }
}

let (a, b) = splitName(name: "Hirata Yusuke")
print("lastname: \(a), firstname:\(b)")