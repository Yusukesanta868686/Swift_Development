let value = 4

switch value{
    case 1:
        print("value is 1")
    case 2, 4, 6, 8:
        print("value i even")
    default:
        print("other")
}

switch value{
    case 4:
        print("value is 4")
        fallthrough
    case 2, 4, 6, 8:
        print("value i even")
        fallthrough
    default:
        print("other")
}

switch value{
    case 1:
        print("value is 1")
    case 2 ..< 10:
        print("value is bigger than 2 and less than 10")
    default:
        print("other")
}