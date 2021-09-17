# coding:utf-8
print("朝来野智博")

print("再帰関数")


def factorial1(word):
    num = len(word)
    if num > 0:
        factorial1(word[0:len(word)-1])
    print("再帰関数{}回目の実行及び出力内容：{}".format(str(num), word))
    return 0


factorial1("朝来野智博")
# 出力結果：
#           再帰関数0回目の実行及び出力内容：
#           再帰関数1回目の実行及び出力内容：朝
#           再帰関数2回目の実行及び出力内容：朝来
#           再帰関数3回目の実行及び出力内容：朝来野
#           再帰関数4回目の実行及び出力内容：朝来野智
#           再帰関数5回目の実行及び出力内容：朝来野智博


print("以上。")
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=python expandtab:
