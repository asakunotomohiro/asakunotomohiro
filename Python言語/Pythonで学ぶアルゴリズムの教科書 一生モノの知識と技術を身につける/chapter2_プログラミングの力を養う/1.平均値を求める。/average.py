# coding:utf-8
# import statistics
#   なぜインポートがエラーになる？
#   インポートしなければ、以下のエラーになる。
#       NameError: name 'statistics' is not defined

print("平均値を求める。")

# 数字を配列で用意する。
asakuno = [70, 98, 92, 88, 64]
# 合計値用の変数。
tomohiro = 0

# 配列格納の数字を1つづつ取り出すのにforを用いている。
for asakunotomohiro in asakuno:
    tomohiro = tomohiro + asakunotomohiro

# 合計値を配列数で割る。
tomohiroAsakuno = tomohiro / len(asakuno)
print("合計値：", tomohiro)
print("平均値：", tomohiroAsakuno)

print("配列の添え字個数：", len(asakuno))

print("以上。")

print("-" * 50)

print("以下、今回のアルゴリズムに全く関係ない。")

# 以下、平均値の出し方。
print("平均値sum：", sum(asakuno)/len(asakuno))
print("平均値sum：", sum(asakuno)/float(len(asakuno)))  # 古いPythonの場合。
#   平均値sum： 82.4

# 以下、平均値の出し方。
#   ただし、関数のインポート(import statistics)が必要になる。
print("平均値statistics：", statistics.mean(asakuno))
#   平均値statistics： 82.4

print("以下、今回のアルゴリズムに全く微塵もひとつも微細も関係ない。")
# 以下、配列内を1つづつ取り出し、それを2倍にした値を新しい配列に代入する。
testData1 = [ii * 2 for ii in asakuno]
print(asakuno)
print(testData1)

# 上記の2倍の方法を別の方法で行う。
testData2 = []
for ii in asakuno:
    testData2.append(ii * 2)
print(testData2)

print("以上。")
# vim:set ts=4 sts=4 sw=4 tw=0:expandtabs
