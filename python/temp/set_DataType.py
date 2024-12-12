a = {1, 2, 3, 4, 5}
b = {1, 4, 5, 8, 9}

c = a | b
# print(f"출력하고싶은 내용 {변수}")
# f-string 표기법
print(f"합집합: {c}")

d = a - b
print(f"차집합: {d}")

e = a & b
print(f"교집합: {e}")

print("-------------")

z = {1, 2, 3}
z.add(3)
print(f"집합 a 결과1 : {z}")
z.add(4)
print(f"집합 a 결과2 : {z}")
z.remove(4)
print(f"집합 a 결과3 : {z}")
z.update((1, 2, 3, 4, 5))
print(f"집합 a 결과4 : {z}")
z.update([1, 3, 4, 5, 6])
print(f"집합 a 결과5 : {z}")

