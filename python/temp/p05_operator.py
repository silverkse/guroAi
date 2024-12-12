print(f"1: {id(2.4)}")
print(f"2: {id(2.4)}")

list1 = [1, 3.5]
list2 = [1, 3.5]
data1 = 5
data2 = 5

print(f"list1: {id(list1)}")
print(f"list2: {id(list2)}")
print(f"list3: {id([1, 3.5])}")
print(f"list4: {id([1, 3.5])}")

print(f"data1: {id(data1)}")
print(f"data2: {id(data2)}")
print(f"data3: {id(5)}")