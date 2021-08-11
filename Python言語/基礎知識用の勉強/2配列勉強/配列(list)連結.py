# 基本的なリスト
asakuno = list('朝来野')
tomohiro = list('智博')
print(asakuno)
# 出力結果：['朝', '来', '野']
print(tomohiro)
# 出力結果：['智', '博']

asakunotomohiro = asakuno + tomohiro
print(asakunotomohiro)
# 出力結果：['朝', '来', '野', '智', '博']

asakunotomohiro = tomohiro * 3
print(asakunotomohiro)
# 出力結果：['智', '博', '智', '博', '智', '博']

asakuno = [
    ['朝', '来', '野'],
    ['智', '博'],
]
print(asakuno)
# 出力結果：[['朝', '来', '野'], ['智', '博']]
tomohiro = asakuno * 3
print(tomohiro)
# 出力結果：[['朝', '来', '野'], ['智', '博'], ['朝', '来', '野'], ['智', '博'], ['朝', '来', '野'], ['智', '博']]
tomohiro[0].append('P')
print(tomohiro)
# 出力結果：[['朝', '来', '野', 'P'], ['智', '博'], ['朝', '来', '野', 'P'], ['智', '博'], ['朝', '来', '野', 'P'], ['智', '博']]


# 既存の配列拡張(上記は、新しい配列を作る)
asakuno = list('朝来野')
asakuno.extend(['智', '博'])
print(asakuno)
# 出力結果：['朝', '来', '野', '智', '博']

# 以下、上と同じ意味。
asakuno = list('朝来野')
asakuno += ['智', '博']
print(asakuno)
# 出力結果：['朝', '来', '野', '智', '博']

# 以上。
