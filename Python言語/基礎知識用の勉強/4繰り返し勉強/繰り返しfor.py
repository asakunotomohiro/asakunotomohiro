asakuno = list('朝来野智博')

for ii in range(10):
    print(ii)
# 出力結果。
#       0
#       1
#       2
#       3
#       4
#       5
#       6
#       7
#       8
#       9

for ii in range(1, 5):
    print(ii)
# 出力結果。
#       1
#       2
#       3
#       4

for ii in range(20, 10, -1):
    print(ii)
# 出力結果。
#       20
#       19
#       18
#       17
#       16
#       15
#       14
#       13
#       12
#       11

# 以下、リストの中身を1つづつ取り出せると思ったが、できないようだ。
# for tomohiro in range(asakuno):
#    print(tomohiro)
# エラー
#       TypeError: 'list' object cannot be interpreted as an integer

# 以上。
