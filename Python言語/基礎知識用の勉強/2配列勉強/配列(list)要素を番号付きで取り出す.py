import itertools

# 基本的なリスト
asakuno = list('朝来野智博')
print(asakuno)
# 出力結果：['朝', '来', '野', '智', '博']

for tomohiro, asakunotomohiro in enumerate(asakuno):
    print(tomohiro, '：', asakunotomohiro)
# 出力結果：0 ： 朝
#           1 ： 来
#           2 ： 野
#           3 ： 智
#           4 ： 博

# 以下、zipでまとめる(少ない要素数に併せる)。
asakuno = list('朝来野')
tomohiro = list('智博')
for asa, tomo in zip(asakuno, tomohiro):
    print(asa, '=', tomo)
# 出力結果：朝 = 智
#           来 = 博

# 以下、zipでまとめる(多い要素数に併せる)。
asakuno = list('朝来野')
tomohiro = list('智博')
for asa, tomo in itertools.zip_longest(asakuno, tomohiro):
    print(asa, '=', tomo)
# 出力結果：朝 = 智
#           来 = 博
#           野 = None


# 以上。
