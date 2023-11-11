var a = 4
var msg: String

if a == 5{
    msg = "a is 5"
} else if a != 4{
    msg = "This is not 4"
} else if a > 2{
    msg = "a is bigger than 2"
} else {
    msg = "a is not true to any conditions."
}

print(msg)

a = 7
if a != 4 && a > 6{
    msg = "a is not 4 and bigger than 6."
} else{
    msg = "a is 4 or is less than 6."
}

print(msg)


msg = a == 7 ? "a is 7" : "a is not 7"
print(msg)