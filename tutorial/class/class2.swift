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

    override func greet(){
        print("My name is \(name). I work in the \(department.lowercased())")
    }
}

let emp1 = Employee(name: "Yusuke", age: 21, department: "Sales")

print(emp1.name)
print(emp1.age)
print(emp1.department)

emp1.greet()
