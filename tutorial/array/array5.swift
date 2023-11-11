let names = ["Hirata", "Yusuke", "Suzuki", "Hiroto"]

for n in names{
    print(n)
}

names.forEach{name in
    print(name)
}

for (index, name) in names.enumerated(){
    print("\(index) \(name)")
}

let names_upper = names.map{$0.uppercased()}

print(names_upper)


struct Student {
    var name: String
    var age: Int
}

var students = [
    Student(name: "Hirata", age: 21),
    Student(name: "Ikeda", age: 21),
    Student(name: "Suzuki", age: 21),
    Student(name: "Tanabe", age: 20)
]

let studentNames = students.map({(student) -> String in 
    return student.name
})

print(studentNames)

let s_names = names.filter{(name) in
    return name.hasPrefix("S")
}
print(s_names)