# coding:utf-8
#   これを付けなければ、エラーが発生する(Python2だと判断された)。
print("朝来野智博")
print("リスト")


print("木構造")

LEFT = 0    # 左ノード番号用定数
RIGHT = 1   # 右ノード番号用定数
DATA = 2    # データ値用定数


# 以下、プログラム
def tree(node):
    MAX = len(node)

    print("指定番号のノード調査。")
    print("入力なしのEnterにて終了。")

    while True:
        inString = input("number：")
        if inString == "":
            break
        number = int(inString)
        if 0 <= number and number < MAX:
            print("node{}の値は{}".format(number, node[number][DATA]))
            leftNumber = node[number][LEFT]
            if leftNumber is not None:
                print("左の葉は" + str(node[leftNumber][DATA]))
            else:
                print("左の葉は存在しない。")
            rightNumber = node[number][RIGHT]
            if rightNumber is not None:
                print("右の葉は" + str(node[rightNumber][DATA]))
            else:
                print("右の葉は存在しない。")
        else:
            print("0から" + str(MAX-1) + "の範囲必須。")


def main():
    node = [
        [1,    2,    10],
        [3,    4,    20],
        [5,    None, 30],
        [None, None, 40],
        [6,    7,    50],
        [None, None, 60],
        [None, None, 70],
        [None, None, 80],
    ]
    # MAX = len(node)
    tree(node)


main()
# 出力結果：
#           指定番号のノード調査。
#           入力なしのEnterにて終了。
#           number：1
#           node1の値は20
#           左の葉は40
#           右の葉は50
#           number：10
#           0から7の範囲必須。
#           number：7
#           node7の値は80
#           左の葉は存在しない。
#           右の葉は存在しない。
#           number：0
#           node0の値は10
#           左の葉は20
#           右の葉は30
#           number：1
#           node1の値は20
#           左の葉は40
#           右の葉は50
#           number：


print("以上。")
# 未だにPython2として認識される。
# vim: set requires python 3.9.7:
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=python expandtab:
