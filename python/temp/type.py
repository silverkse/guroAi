a = "2.5"
print(a, type(a))

print("--------------------")

print("소수 둘째 자리까지 : %.2f "%(1.0+3.14))
print("%d%%"%((45/100) * 100))
print("%s"%(3>10))
# %s -> 문자열 대체

print("--------------------")

print(type(5))
print(type(5/3))
print(type(5>3))
print(type(int(3.4)))

print("--------------------")

data = "최종 자료형 : ", float(7)   # 튜플 자료형(=> 복합 자료형의 한 종류)
print(type(data))
print(data)

print("--------------------")

strData = 123
print(type(data))
print(type(str(data)))

strData2 = "오늘은 즐거운 \"월요일\"입니다."
print(strData2)

print("--------------------")

strData3 = "파이썬문자열"
#          0  1  2  3  4  5
#         -6 -5 -4 -3 -2 -1
print("strData3[0] : " + strData3[0])
print("strData3[2:4] : " + strData3[2:4])
print("strData3[:] : " + strData3[:])