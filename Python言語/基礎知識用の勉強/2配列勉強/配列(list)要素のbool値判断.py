# 基本的なリスト
asakuno = list('朝来野智博')
print(asakuno)
# 出力結果：['朝', '来', '野', '智', '博']

# 以下、リスト内の全ての要素がTrueであるか。
#   何がどのようにTrue？
print(all(asakuno))
# 出力結果：True

# 以下、リスト内の全ての要素がTrueであるか。
print(all([True, True, False]))
# 出力結果：False

# 以下、リスト内の要素が1つでもTrueであるか。
print(any([True, True, False]))
# 出力結果：True

# 以下、リスト内の要素が全てFalseであるか。
print(not any([True, True, False]))
# 出力結果：False


# 以上。
