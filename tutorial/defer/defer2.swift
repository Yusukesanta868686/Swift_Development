func test(){
    var value = 1

    print("state1 ---- value: \(value)")

    defer{
        print("defer ---- value: \(value)")
    }

    value = 2

    print("state2 ---- value: \(value)")
}


test()