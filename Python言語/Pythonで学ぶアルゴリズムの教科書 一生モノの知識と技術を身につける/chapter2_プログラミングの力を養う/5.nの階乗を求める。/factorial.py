# coding:utf-8
#   これを付けなければ、エラーが発生する(Python2だと判断された)。
print("朝来野智博")


print("10の階乗(10!)を求める。")
print("ルール1")


def factorial1(word):
    fuc = 10
    for ii in range(9, 0, -1):
        fuc = fuc * ii
    return fuc


fac = factorial1("10の階乗を求める関数呼び出し1")
print("10の階乗：", fac)
# 出力結果：
#           10の階乗： 3628800

print("-" * 30)

print("ルール2")


def factorial2(num):
    fuck = num
    for ii in range(num-1, 0, -1):
        fuck = fuck * ii
    return fuck


fac = factorial2(10)
print("10の階乗：", fac)
# 出力結果：
#           10の階乗： 3628800

fac = factorial2(5)
print("10の階乗：", fac)
# 出力結果：
#           10の階乗： 120

print("-" * 30)


def factorial3(num):
    if num == 0:
        ret = 1
    else:
        ret = num*factorial3(num-1)
    return ret


for ii in range(0, 21):
    print(str(ii)+"! =", factorial3(ii))


fac = factorial3(20)
print("20の階乗：", fac)
# 出力結果：
#           0! = 1
#           1! = 1
#           2! = 2
#           3! = 6
#           4! = 24
#           5! = 120
#           6! = 720
#           7! = 5040
#           8! = 40320
#           9! = 362880
#           10! = 3628800
#           11! = 39916800
#           12! = 479001600
#           13! = 6227020800
#           14! = 87178291200
#           15! = 1307674368000
#           16! = 20922789888000
#           17! = 355687428096000
#           18! = 6402373705728000
#           19! = 121645100408832000
#           20! = 2432902008176640000
#           20の階乗： 2432902008176640000


print("以上。")
# 未だにPython2として認識される。
# vim: set requires python 3.9.7:
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=python expandtab:
