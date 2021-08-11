# 基本的なリスト
asakuno = list('朝来野智博')
print(asakuno)
# 出力結果：['朝', '来', '野', '智', '博']

# todo: 何をやっているのか全く分からない。
#   ラムダ式の勉強をしてから戻ってこよう。
tomohiro = map(lambda v: v * v, asakuno)
# 一応・・・個々のリスト要素を自乗した結果が出てくるようだ。
print(list(tomohiro))

# 以上。
