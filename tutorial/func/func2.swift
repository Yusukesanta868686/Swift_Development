class Person{
    var lastName: String
    var firstName: String

    init(lastName:String, firstName:String){
        self.lastName = lastName
        self.firstName = firstName
    }
}

func splitName(person: Person) -> (lastName: String, firstName: String){
    person.lastName = "AAA"
    return (person.lastName, person.firstName)
}

var p = Person(lastName: "Hirata", firstName: "Yusuke")

let n = splitName(person: p)

print("lastname: \(n.0), firstname: \(n.1)")
print("lastname: \(p.lastName), firstname: \(p.firstName)")