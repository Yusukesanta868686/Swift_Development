var numbers:Set = [1, 2, 3, 4, 5]

for number in numbers{
    print(number)
}

numbers = [1, 2, 3, 4, 5]

numbers.forEach({number in
    print(number)
})

numbers = [1, 2, 3, 4, 5]
for (index, number) in numbers.enumerated(){
    print("\(index), \(number)")
}

numbers = [1, 2, 3, 4, 5]
let numbers10 = numbers.map{$0 * 10}
print(numbers10)
print(type(of: numbers10))

numbers = [1, 2, 3, 4, 5, 6, 7, 8]
let numbers2 = numbers.filter{(number) in
    return number % 2 == 0
}

print(numbers2)
print(type(of: numbers2))