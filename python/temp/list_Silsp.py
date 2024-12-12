a = [4, '우유']
print(a)
print(type(a))

b = list([21, "포도", True])
print(b)
print(type(b))

c = list("21, 포도, True")
print(c)
print(type(c))

d = list(b)
print(d)
print(type(d))

print("-----------------")

print(b[1])
print(b[1:])

print("-----------------")

print(f"출력1 : {b}")

b[1] = "딸기"

print(f"출력2 : {b}")

print("-----------------")

b.append("토마토")
print(f"출력3 : {b}")

b.insert(1, "고구마")
print(f"출력4 : {b}")

print("-----------------")

b = [3.1, 5, 7]
b.sort()
print(b)

b.sort(reverse=True)
print(b)