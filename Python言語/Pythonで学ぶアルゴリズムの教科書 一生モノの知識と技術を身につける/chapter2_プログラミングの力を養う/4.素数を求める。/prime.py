# coding:utf-8
#   これを付けなければ、エラーが発生する(Python2だと判断された？)。
print("朝来野智博")

#   以下、間違っているようで、エラーになった。
#           err          vim: set requires python 3.x:
#   具体的な番号指定をしていなかったのが原因のようだ。だめだった。
#           err         vim: set requires python 3.9.7:

#   以下も、冒頭に付けておくことでバージョン指定できるようだが、シェルファイルとして認識されてしまい、Python実行できなくなってしまった。
#           err         #!/any string/python3


# 2から100までの素数を出力する。
def prime1(word):
    for ii in range(2, 101):
        hh = ii//2
        ff = True
        for jj in range(2, hh+1):
            if ii % jj == 0:
                ff = False
                break
        if ff is True:
            print(ii, end=",")
            # print(ii, ",")
    return 0


prime1("素数を求める関数1呼び出し")
print()
# 出力結果：
#           2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,


print("-" * 30)


print("以上。")
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=python expandtab:
