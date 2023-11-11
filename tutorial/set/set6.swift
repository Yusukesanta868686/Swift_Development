var set1:Set = [1, 2, 3, 4, 5, 6, 7, 8]
var set2:Set = [3, 6, 9, 12]
var set3:Set = [4, 7, 6, 5, 8, 2, 1, 3]

print(set1 == set2)
print(set1 == set3)

set1 = [1, 2, 3, 4]
set2 = [4, 2, 3, 1]
set3 = [1, 2, 3, 4, 5]
var set4:Set = [2, 3, 4, 5, 6]

print(set1.isSubset(of: set2))
print(set1.isStrictSubset(of: set2))
print(set1.isSubset(of: set3))
print(set1.isSubset(of: set4))

set1 = [1, 2, 3, 4, 5]
set2 = [5, 2, 4, 3, 1]
set3 = [1, 2, 3, 4]
set4 = [3, 4, 5, 6]

print(set1.isSuperset(of: set2))
print(set1.isStrictSuperset(of: set2))
print(set1.isSuperset(of: set3))
print(set1.isSuperset(of: set4))

set1 = [1, 2, 3, 4, 5]
set2 = [6, 7, 8]
set3 = [5, 6, 7]

print(set1.isDisjoint(with: set2))
print(set1.isDisjoint(with: set3))