var dict:[String: Any] = ["Key1": 10, "Key2": "Yusuke", "Key3": 450]

print(dict.count)

print(dict.isEmpty)
dict.removeAll()
print(dict.isEmpty)

dict = ["Key1": 10, "Key2": "Yusuke", "Key3": 450]

print(dict.keys.contains("Key2"))
print(dict.keys.contains("Key6"))
