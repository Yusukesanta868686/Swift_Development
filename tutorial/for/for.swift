for i in 1 ..< 5{
    print("i is \(i)")
}

var names:[String] = []
names.append("Yusuke")
for name in names{
    print(name)
}

let students = ["S001": "Yamada", "S002": "Hirata"]

for (s, n) in students{
    print("studentID: \(s), name:\(n)")
}

for i in 1...10{
    if i % 2 == 0{
        continue
    }
    print("i = \(i)")
}

for i in 1...10{
    if i == 8{
        break
    }
    print("i = \(i)")
}
print("-------------")
for i in 1...10 where i % 2 == 0{
    print("i = \(i)")
}
