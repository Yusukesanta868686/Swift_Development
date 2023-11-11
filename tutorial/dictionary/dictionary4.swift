var dict:[String: Any] = ["Key1": 10, "Key2": "Yusuke", "Key3": 450]

for d in dict{
    print("\(d.key): \(d.value)")
}

dict.forEach{d in
    print("\(d.key): \(d.value)")
}

for key in dict.keys{
    print(key)
}

for value in dict.values{
    print(value)
}

for key in dict.keys.sorted(){
    print("\(key): \(dict[key]!)")
}

let dict1 = ["Key1": 10, "Key2": 450, "Key3": 450]

let dict2 = dict1.mapValues{value in
    return value * 10
}
print(dict)
print(dict2)

let dict3 = dict1.filter{key, value in
    return value < 70
}

print(dict3)