asakuno = list('朝来野智博')

while True:
    ss = input("文字列入力：")
    print(ss)
    if ss == "":
        break
# 実行結果
#       $ python 繰り返しwhile無限ループ.py
#       文字列入力：z
#       z
#       文字列入力：    ←☆当然だが、半角スペースでは抜け出ることが出来ない。
#
#       文字列入力：    ←☆何も入力せずにEnterキー押下により抜け出せた。
#
#       $

# 以上。
