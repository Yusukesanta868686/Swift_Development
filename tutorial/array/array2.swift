var names = ["Suzuki", "Hiroto", "Hirata", "Yusuke"]
print(names)

let removed = names.remove(at:1)
print(names)
print(removed)

names = ["Suzuki", "Hiroto", "Hirata", "Yusuke"]
names.removeSubrange(1...2)
print(names)

names = ["Suzuki", "Hiroto", "Hirata", "Yusuke"]
let removed2 = names.removeFirst()
print(names)
print(removed2)

names = ["Suzuki", "Hiroto", "Hirata", "Yusuke"]
print(names)
let removed3 = names.removeFirst(2)
print(names)
print(removed3)

names = ["Suzuki", "Hiroto", "Hirata", "Yusuke"]
let removed4 = names.removeLast()
print(names)
print(removed4)


names = ["Suzuki", "Hiroto", "Hirata", "Yusuke"]
names.removeAll()
print(names)

names = ["Suzuki", "Hiroto", "Hirata", "Yusuke", "Suzuki"]
//クロージャという。無名関数、のことで、配列の各要素について。適用される。
//$0は、クロージャ内でのショートハンド名
names.removeAll(where: {$0 == "Suzuki"})
print(names)