enum Direction{
    case up(Int)
    case down(Int)
    case left(Int)
    case right(Int)
}

let direction = Direction.down(2)

switch direction{
    case .up(let i):
        print("direction is up - \(i)")
    case .down(let i):
        print("direction is down - \(i)")
    case .left(let i):
        print("direction is left - \(i)")
    case .right(let i):
        print("direction is right - \(i)")
}