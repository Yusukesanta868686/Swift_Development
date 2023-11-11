enum Direction{
    case up
    case down
    case left
    case right
}
var d = Direction.right
print(d)

d = .left
print(d)
print(type(of: d))

switch d{
    case .right:
        print("Direction is right")
    case .left:
        print("Direction is left")
    case .up:
        print("Direction is up")
    case .down:
        print("Direction is down")
}

func move(direction: Direction){
    switch direction{
    case .right:
        print("Direction is right")
    case .left:
        print("Direction is left")
    case .up:
        print("Direction is up")
    case .down:
        print("Direction is down")
    }
}

move(direction: .up)