//array-1
var names: [String] = []
names = ["Hirata", "Yusuke", "Kishida", "Fumio"]
print(names)
print(names[0])
print(names[...2])
print(names[..<2])

names[0] = "Saito"
print(names)

names.append("Hiroki")
print(names)

var names2 = ["Taiga"]
names.append(contentsOf: names2)
print(names)

names.insert("Hiroto", at: 0)
print(names)