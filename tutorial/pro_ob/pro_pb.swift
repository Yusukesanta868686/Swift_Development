class Test{
    var count: Int = 0{
        willSet{
            print("countは \(newValue) になります")
        }

        didSet{
            print("変更前: \(oldValue) -> 変更後: \(self.count)")
            if oldValue == self.count{
                print("countは変更なしです")
            } else if oldValue < self.count {
                print("countが\(self.count - oldValue)増えました")
            } else{
                print("countが\(oldValue - self.count)減りました")
            }
        }
    }
}

let test = Test()
test.count = 5
print("------")
test.count = 20
print("------")
test.count = 20
print("------")
test.count = 8
print("------")