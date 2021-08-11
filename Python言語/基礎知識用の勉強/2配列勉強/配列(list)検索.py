# 基本的なリスト
asakuno = list('朝来野智博朝来野智博')
print(asakuno)
# 出力結果：['朝', '来', '野', '智', '博', '朝', '来', '野', '智', '博']

# 「朝」の検索
print(asakuno.index('朝'))
# 出力結果：0

# 「智」の検索
print(asakuno.index('智'))
# 出力結果：3

# 6文字目(index_5)以降で「朝」の検索
print(asakuno.index('朝', 5))
# 出力結果：5

# 5文字目以降8文字目までで「智」の検索
print(asakuno.index('智', 4, 7))
# 出力結果：ValueError: '智' is not in list
#   配列になかったことを表すエラー。

# 以上。
