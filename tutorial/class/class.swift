class Person{
    var name: String
    var age: Int

    init(name: String, age: Int){
        self.name = name
        self.age = age
    }

    func greet(){
        print("My name is \(self.name). I'm \(self.age) years old.")
    }
}

let p1 = Person(name: "Yusuke", age: 21)
p1.greet()

let p2 = p1

p2.age = 100
p1.greet()
p2.greet()

class Employee: Person{
    var department: String
    var paidVacationDays: Int = 20
    init(name: String, age: Int, department: String){
        self.department = department
        super.init(name: name, age: age)
    }

    func usePaidVacations(days: Int){
        if paidVacationDays >= days{
            paidVacationDays -= days
            print("\(paidVacationDays) days of paid vacation time remaining.")
        } else {
            print("You are short of paid vacation time.")
        }
    }
}

let emp1 = Employee(name: "Yusuke", age: 21, department: "Sales")

print(emp1.name)
print(emp1.age)
print(emp1.department)

emp1.greet()

emp1.usePaidVacations(days: 2)
emp1.usePaidVacations(days: 20)