var dict:[String: Any] = ["Key1": 10, "Key2": "Yusuke", "Key3": 450]

print(dict)

var removed = dict.removeValue(forKey: "Key1")
print(dict)
print(removed ?? "Nothing isd removed")

dict.removeAll()
print(dict)