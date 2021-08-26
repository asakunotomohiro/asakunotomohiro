# 基本的なリスト
asakuno = list('朝来野智博')
print(asakuno)
# 出力結果：['朝', '来', '野', '智', '博']

# 要素の置き換え
asakuno[2:3] = list('asakuno')
print(asakuno)
# 出力結果：['朝', '来', 'a', 's', 'a', 'k', 'u', 'n', 'o', '智', '博']

# 要素の削除
asakuno[2:9] = []
print(asakuno)
# 出力結果：['朝', '来', '智', '博']

# 要素の削除
asakuno = list('朝来野智博')
asakuno[2:3] = list('asakuno')  # 上記と同じ結果に揃えた。
del asakuno[2:9]
print(asakuno)
# 出力結果：['朝', '来', '智', '博']

# 要素の挿入
asakuno = list('朝来智博')  # 「野」がない。
asakuno[2:2] = ['野']
print(asakuno)
# 出力結果：['朝', '来', '野', '智', '博']


# 以上。
