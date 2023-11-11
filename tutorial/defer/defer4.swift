func test(){
    print("state 1")

    do{
        print("state 2")

        defer {
            print("defer 1")
        }

        print("state 3")
    }

    print("state 4")
}

test()