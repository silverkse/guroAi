num = int(input('정수 입력 : '))

if num > 0:
  print(f'입력값 : {num}은(는) 양수입니다')
elif num == 0:
  print('0 입니다')
else:
  print('음수입니다')

print('OK') if num else print('not')