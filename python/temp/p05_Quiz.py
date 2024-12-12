sejong = 0
hwang = 0
sunsin = 0
top = 0
units = 0

price = int(input("금액을 만원 이상 입력하세요: "))
sejong = price // 10000
hwang = (price - sejong * 10000) // 1000
sunsin = (price - (sejong * 10000 + hwang * 1000)) // 100
top = (price - (sejong * 10000 + hwang * 1000 + sunsin * 100)) // 10
units = (price - (sejong * 10000 + hwang * 1000 + sunsin * 100)) % 10
# print(f"sejong: {sejong}\nhwang: {hwang}\nsunsin: {sunsin}\ntop: {top}\nunits: {units}")

billList = [sejong, hwang, sunsin, top, units]
print(f"만원권: {billList[0]}\n천원권: {billList[1]}\n"
      +f"백원: {billList[2]}\n십원: {billList[3]}\n일원: {billList[4]}")


test = "hello"
print(set(test))

price = str(price)
print(price[0:-4])
print(price[-4])
print(price[-3])
print(price[-2])
print(price[-1])