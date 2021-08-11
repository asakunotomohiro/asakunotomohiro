import bisect

# 基本的なリスト
asakuno = list('朝来野智博')
print(asakuno)
# 出力結果：['朝', '来', '野', '智', '博']

asakuno.reverse()
print(asakuno)
# 出力結果：['博', '智', '野', '来', '朝']

asakuno = list('朝来野智博')
asakuno.sort()
print(asakuno)
# 出力結果：['博', '智', '朝', '来', '野']
asakuno = list('asakuno')
asakuno.sort()
print(asakuno)
# 出力結果：['a', 'a', 'k', 'n', 'o', 's', 'u']

asakuno = list('朝来野智博')
asakuno.sort(reverse=True)
print(asakuno)
# 出力結果：['野', '来', '朝', '智', '博']

# 以下、任意のキーで並べ替える。
#   ToDo: ラムダ式を使っているため、勉強したときに戻ってくる必要がある。
asakuno = list('朝来野智博')
asakuno.sort(key=lambda x: len(x))
print(asakuno)
# 出力結果：['朝', '来', '野', '智', '博']
asakuno = list('asakuno')
asakuno.sort(key=lambda x: len(x))
print(asakuno)
# 出力結果：['a', 's', 'a', 'k', 'u', 'n', 'o']

# ソート順を保ちながら要素を挿入する。
asakuno = list('asakuno')
asakuno.sort()
bisect.insort(asakuno, 'p')
print(asakuno)

# 以下の結果は、配列になっているのではなく、イテレータに代わっているため、気をつけること。
asakuno = list('朝来野智博')
tomohiro = reversed(asakuno)
print(list(tomohiro))
# 出力結果：['博', '智', '野', '来', '朝']

# 以上。
