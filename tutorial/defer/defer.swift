func test(){
    print("aaaaa")

    defer{
        print("defer")
    }

    print("ccccc")
}

test()