func splitName(name: inout String) -> (lastName: String, firstName: String){
    let names = name.split(separator: " ")

    if name.count == 2{
        return (String(names[0]), String(names[1]))
    } else {
        name = "Invalid"
        return ("", "")
    }
}

var name = "Hirata"
print("name:\(name)")

let nameSplit = splitName(name: &name)
print("name:\(name)")