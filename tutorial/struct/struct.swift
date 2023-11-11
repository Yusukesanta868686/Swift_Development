struct Person{
    var name: String
    var age: Int

    func greet(){
        print("Hello! My name is \(name), and I'm \(age) years old.")
    }
}

var p1 = Person(name: "Yusuke", age: 21)
p1.greet()

p1.age = 100
p1.greet()

var p2 = p1
p2.age = 50
p2.greet()
p1.greet()