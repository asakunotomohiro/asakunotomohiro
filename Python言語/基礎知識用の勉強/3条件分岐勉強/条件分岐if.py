asakuno = list('朝来野智博')

asakuno = -1
if asakuno == 0:
    print("asakunoはゼロです。")
if asakuno > 0:
    print("asakunoは正の数です。")
if asakuno < 0:
    print("asakunoは負の数です。")

# 上記のどれかが実行されたと言うこと。
#   出力結果：asakunoは負の数です。

print("-" * 50)

asakuno = -1
if asakuno == 0:
    print("0 ==", asakuno)
elif asakuno > 0:
    print(asakuno, "> 0")
else:
    print(asakuno, "!= 0")
# 出力結果：-1 != 0

print("-" * 50)
asakuno = 0
if asakuno == 0:
    print("0 ==", asakuno)
elif asakuno > 0:
    print(asakuno, "> 0")
else:
    print(asakuno, "!= 0")
# 出力結果：0 == 0

print("-" * 50)
asakuno = 1
if asakuno == 0:
    print("0 ==", asakuno)
elif asakuno > 0:
    print(asakuno, "> 0")
else:
    print(asakuno, "!= 0")
# 出力結果：1 > 0

# 以上。
