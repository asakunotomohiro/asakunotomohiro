# coding:utf-8
#   これを付けなければ、エラーが発生する(Python2だと判断された)。
print("朝来野智博")
print("ファイル読み込み。")


# 以下、プログラム
def main():
    f = open("asakuno.txt", 'r', encoding="utf-8")
    rr = f.read()
    f.close()
    ss = rr.split(",")
    nn = len(ss)
    data = [0] * nn
    for ii in range(nn):
        if ss[ii] != "":
            data[ii] = str(ss[ii])
    print(data)


main()
# 出力結果：
#       $ ll
#       total 24
#       -rw-r--r--  1 asakunotomohiro  staff   654  1 15 22:23 read.py
#       -rw-r--r--  1 asakunotomohiro  staff    66  1 15 22:20 asakuno.txt
#       $ python read.py
#       朝来野智博
#       ファイル読み込み。
#       ['asakuno 朝来野 智博 tomohiro\n    朝来野\n  智博\ntomohiro\n']
#       以上。
#       $ cat asakuno.txt
#       asakuno 朝来野 智博 tomohiro
#           朝来野
#         智博
#       tomohiro
#       $


print("以上。")
# 未だにPython2として認識される。
# vim: set requires python 3.9.7:
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=python expandtab:
