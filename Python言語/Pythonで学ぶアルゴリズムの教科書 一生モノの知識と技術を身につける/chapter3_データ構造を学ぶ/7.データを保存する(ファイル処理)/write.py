# coding:utf-8
#   これを付けなければ、エラーが発生する(Python2だと判断された)。
print("朝来野智博")
print("ファイル書き込み。")


# 以下、プログラム
def main():
    f = open("asakuno.txt", 'w', encoding="utf-8")
    for ii in range( 1, 11 ):
        data = str( 2**ii )
        f.write(data + ",")
    f.close()


main()
# 出力結果：
#       $ ll
#       total 8
#       -rw-r--r--  1 asakunotomohiro  staff  841  1 15 22:04 write.py
#       -rw-r--r--  1 asakunotomohiro  staff    0  9 26 17:21 アルゴリズム勉強用ディレクトリ
#       $ python write.py
#       朝来野智博
#       ファイル書き込み。
#       以上。
#       $ ll
#       total 16
#       -rw-r--r--  1 asakunotomohiro  staff   32  1 15 22:05 asakuno.txt
#       -rw-r--r--  1 asakunotomohiro  staff  841  1 15 22:04 write.py
#       -rw-r--r--  1 asakunotomohiro  staff    0  9 26 17:21 アルゴリズム勉強用ディレクトリ
#       $ cat asakuno.txt
#       2,4,8,16,32,64,128,256,512,1024,$	←☆残念ながら末尾が改行されていないため、こうなる(誰が悪いわけではない)。
#       $


print("以上。")
# 未だにPython2として認識される。
# vim: set requires python 3.9.7:
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=python expandtab:
