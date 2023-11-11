func test(){
    print("state 1")

    defer{
        print("defer 1")
    }

    defer{
        print("defer 2")
    }

    print("state 2")
}

test()