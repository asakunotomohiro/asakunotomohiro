asakuno = list('朝来野智博')

# for内のbreak文
for ii in range(4):
    print("1つ目のfor", ii, "回目の実行")
    if ii == 3:
        break
    for jj in range(4):
        print("　　2つ目のfor", jj, "回目の実行")
# 出力結果。
#       1つ目のfor 0 回目の実行
#       　　2つ目のfor 0 回目の実行
#       　　2つ目のfor 1 回目の実行
#       　　2つ目のfor 2 回目の実行
#       　　2つ目のfor 3 回目の実行
#       1つ目のfor 1 回目の実行
#       　　2つ目のfor 0 回目の実行
#       　　2つ目のfor 1 回目の実行
#       　　2つ目のfor 2 回目の実行
#       　　2つ目のfor 3 回目の実行
#       1つ目のfor 2 回目の実行
#       　　2つ目のfor 0 回目の実行
#       　　2つ目のfor 1 回目の実行
#       　　2つ目のfor 2 回目の実行
#       　　2つ目のfor 3 回目の実行
#       1つ目のfor 3 回目の実行
# ここで途切れている(breakの効果)。

# for内のcontinue文
for ii in range(4):
    print("1つ目のfor", ii, "回目の実行")
    if ii == 2:
        continue
    for jj in range(4):
        print("　　2つ目のfor", jj, "回目の実行")
# 出力結果。
#       1つ目のfor 0 回目の実行
#       　　2つ目のfor 0 回目の実行
#       　　2つ目のfor 1 回目の実行
#       　　2つ目のfor 2 回目の実行
#       　　2つ目のfor 3 回目の実行
#       1つ目のfor 1 回目の実行
#       　　2つ目のfor 0 回目の実行
#       　　2つ目のfor 1 回目の実行
#       　　2つ目のfor 2 回目の実行
#       　　2つ目のfor 3 回目の実行
#       1つ目のfor 2 回目の実行
# ここで実行が抜かされている。
#       1つ目のfor 3 回目の実行
#       　　2つ目のfor 0 回目の実行
#       　　2つ目のfor 1 回目の実行
#       　　2つ目のfor 2 回目の実行
#       　　2つ目のfor 3 回目の実行


# 以上。
