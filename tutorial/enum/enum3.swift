enum Direction1: Int{
    case up = 0
    case down = 1
    case left = 2
    case right = 3
}

let d1 = Direction1.left
print(d1.rawValue)

enum Direction2: String{
    case up = "UP"
    case down = "DOWN"
    case left = "LEFT"
    case right = "RIGHT"
} 

let d2 = Direction2.down
print(d2.rawValue)