var numbers:Set = [1, 2, 3, 4, 5]
print(numbers)

let removed = numbers.remove(7)
print(numbers)
print(removed ?? "Not found")

numbers = [1, 2, 3, 4, 5]
print(numbers)
let removed1 = numbers.removeFirst()
print(numbers)
print(removed1)

let removed2 = numbers.popFirst()
print(numbers)
print(removed2 ?? "Not found")
print(type(of: removed2))

numbers = [1, 2, 3, 4, 5]
numbers.removeAll()

print(numbers)