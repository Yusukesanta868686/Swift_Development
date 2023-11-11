var names = ["Hirata", "Yusuke", "Suzuki", "Hiroto"]

names.sort()
print(names)

names = ["Hirata", "Yusuke", "Suzuki", "Hiroto"]
names.sort(by: >)
print(names)

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

for s in students{
    print("name: \(s.name), age: \(s.age)")
}

students.sort(by: {$0.name > $1.name})

for s in students{
    print("name:\(s.name), age:\(s.age)")
}

students.sort(by:{
    ($0.name, $0.age) < ($1.name, $1.age)
})

for s in students{
    print("name: \(s.name), age: \(s.age)")
}

names = ["Hirata", "Yusuke", "Suzuki", "Hiroto"]
var names_sort = names.sorted()
names_sort[0] = "Maekawa"
print(names_sort)


names = ["Hirata", "Yusuke", "Suzuki", "Hiroto"]
names.reverse()
print(names)