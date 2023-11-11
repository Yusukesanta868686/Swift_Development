let names = ["Hirata", "Yusuke", "Suzuki", "Hiroto"]

print(names.firstIndex(of: "Hirata") ?? "Not Found")
print(names.firstIndex(of: "Suzukiu") ?? "Not Found")
print(names.contains("Hirata"))
print(names.contains("Saito"))