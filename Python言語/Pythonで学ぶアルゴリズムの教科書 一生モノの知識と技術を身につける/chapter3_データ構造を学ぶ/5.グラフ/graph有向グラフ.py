# coding:utf-8
#   これを付けなければ、エラーが発生する(Python2だと判断された)。
print("朝来野智博")
print("リスト")

print("グラフ")
print("	有向グラフ")


# 以下、プログラム
def graph(data, node, arrow):
    for yy in range(5):
        for xx in range(yy, 5):
            e1 = data[yy][xx]
            e2 = data[xx][yy]
            aa = e1 + e2*2
            if aa > 0:
                print(node[yy] + arrow[aa] + node[xx])


def main():
    data = [    # グラフの定義。
            [0, 1, 1, 0, 0, ],
            [0, 0, 1, 1, 0, ],
            [0, 0, 0, 0, 0, ],
            [0, 0, 0, 0, 1, ],
            [0, 0, 1, 1, 0, ],
        ]
    node = [
            "(0)", "(1)", "(2)", "(3)", "(4)",
        ]
    arrow = ["", "-->", "<--", "<->", ]
    graph(data, node, arrow)


main()
# 出力結果：
#       (0)-->(1)
#       (0)-->(2)
#       (1)-->(2)
#       (1)-->(3)
#       (2)<--(4)
#       (3)<->(4)


print("以上。")
# 未だにPython2として認識される。
# vim: set requires python 3.9.7:
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=python expandtab:
