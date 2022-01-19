# coding:utf-8
#   これを付けなければ、エラーが発生する(Python2だと判断された)。
print("朝来野智博")
print("スタック")


def push(stack, data):
    # データを末尾に追加。
    stack.append(data)
    print("データ", data, "を追加しました。")

    return stack


def pop(stack):
    if len(stack) > 0:
        return stack.pop(-1)
    else:
        print("取り出すデータが存在しません。")
        return None, None


def main():
    stack = list()
    for ii in range(6):
        stack = push(stack, ii)
    for ii in range(7):
        data = pop(stack)
        print("取り出したデータ：", data)
    # 出力結果：
#           データ 0 を追加しました。
#           データ 1 を追加しました。
#           データ 2 を追加しました。
#           データ 3 を追加しました。
#           データ 4 を追加しました。
#           データ 5 を追加しました。
#           取り出したデータ： 5
#           取り出したデータ： 4
#           取り出したデータ： 3
#           取り出したデータ： 2
#           取り出したデータ： 1
#           取り出したデータ： 0
#           取り出すデータが存在しません。
#           取り出したデータ： (None, None)


main()


print("以上。")
# 未だにPython2として認識される。
# これ⇒"set requires python 3.9.7:"　なぜかvimの設定として読み込む場合、エラーになる(requiresが原因)。
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=python expandtab:
