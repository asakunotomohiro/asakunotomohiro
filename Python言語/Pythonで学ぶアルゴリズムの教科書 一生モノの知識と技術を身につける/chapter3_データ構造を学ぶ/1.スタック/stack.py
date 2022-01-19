# coding:utf-8
#   これを付けなければ、エラーが発生する(Python2だと判断された)。
print("朝来野智博")
print("スタック")

# 積み上げる最大数を5つに制限している。
MAX = 5


def push(stack, sp, data):
    # global sp
    if sp < MAX:
        stack[sp] = data
        # sp = sp + 1
        sp += 1
        print("データ", data, "を追加しました。")
    else:
        print("これ以上データを入れられません。")
    return sp


def pop(stack, sp):
    # global sp
    if sp > 0:
        # sp = sp - 1
        sp -= 1
        return stack[sp], sp
    else:
        print("取り出すデータが存在しません。")
        return None, None


def main():
    stack = [0] * MAX
    sp = 0  # スタックポインタ(出し入れ位置管理変数)
    for ii in range(6):
        sp = push(stack, sp, ii)
    for ii in range(6):
        data, sp = pop(stack, sp)
        print("取り出したデータ：", data)
    # 出力結果：
#               データ 0 を追加しました。
#               データ 1 を追加しました。
#               データ 2 を追加しました。
#               データ 3 を追加しました。
#               データ 4 を追加しました。
#               これ以上データを入れられません。
#               取り出したデータ： 4
#               取り出したデータ： 3
#               取り出したデータ： 2
#               取り出したデータ： 1
#               取り出したデータ： 0
#               取り出すデータが存在しません。
#               取り出したデータ： None


main()
# 出力結果：


print("以上。")
# 未だにPython2として認識される。
# vim: set requires python 3.9.7:
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=python expandtab:
