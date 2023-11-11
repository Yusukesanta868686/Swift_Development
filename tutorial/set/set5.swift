var set1:Set = [1, 2, 3, 4, 5, 6, 7, 8]
var set2:Set = [3, 6, 9, 12]

var set3 = set1.intersection(set2)
print(set3)

set3 = set1.union(set2)
print(set3)

set3 = set1.subtracting(set2)
print(set3)

set2 = [3, 6, 9, 12]
set3 = set1.symmetricDifference(set2)
print(set3)