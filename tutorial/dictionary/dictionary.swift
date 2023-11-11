var dict:[String: Int] = [:]

dict = ["Key1": 10, "Key2": 5, "Key3": 7, "Key4": 10]

print(dict["Key1"] ?? "Not found")

dict["Key3"] = 100
print(dict)