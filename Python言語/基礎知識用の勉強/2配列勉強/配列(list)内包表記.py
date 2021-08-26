# 基本的なリスト
asakuno = list('朝来野智博')
print(asakuno)
# 出力結果：['朝', '来', '野', '智', '博']

# 以下、配列内の各要素に1を足して、新しい配列に代入し直している。
asakuno = [1, 2, 3, 4, 100]
tomohiro = [i + 1 for i in asakuno]
print(tomohiro)
# 出力結果：[2, 3, 4, 5, 101]

# 以上。
