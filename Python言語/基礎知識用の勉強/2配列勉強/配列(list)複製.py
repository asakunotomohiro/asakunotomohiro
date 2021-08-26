import copy

# 基本的なリスト
asakuno = list('朝来野智博')
print(asakuno)
# 出力結果：['朝', '来', '野', '智', '博']

# 上記配列をコピーする(複製)。
tomohiro = 0
print(tomohiro)
tomohiro = asakuno.copy()
print(tomohiro)
# 出力結果：['朝', '来', '野', '智', '博']

# 以下、ディープコピー用に使うコピー元配列。
asakuno = [
    ['朝', '来', '野'],
    ['智', '博'],
]
#   まずは、浅いコピー。
tomohiro = asakuno.copy()
print(tomohiro)
# 出力結果：[['朝', '来', '野'], ['智', '博']]
tomohiro[1][0] = '努'
print(tomohiro)  # コピー先。
# 出力結果：[['朝', '来', '野'], ['努', '博']]
print(asakuno)  # コピー元(こちらが変わっては困る)。
# 出力結果：[['朝', '来', '野'], ['努', '博']]
#                                 現実は甘くなく、書き換わっている。

asakuno = [
    ['朝', '来', '野'],
    ['智', '博'],
]
tomohiro = copy.deepcopy(asakuno)
print(tomohiro)
# 出力結果：[['朝', '来', '野'], ['智', '博']]
tomohiro[1][0] = '努'
print(tomohiro)  # コピー先。
# 出力結果：[['朝', '来', '野'], ['努', '博']]
print(asakuno)  # コピー元(こちらが変わっては困る)。
# 出力結果：[['朝', '来', '野'], ['智', '博']]

# 以上。
