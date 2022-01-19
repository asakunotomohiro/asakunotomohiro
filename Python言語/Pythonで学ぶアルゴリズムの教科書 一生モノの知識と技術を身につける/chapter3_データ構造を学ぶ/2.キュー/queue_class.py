import collections

# coding:utf-8
#   これを付けなければ、エラーが発生する(Python2だと判断された)。
print("朝来野智博")
print("キューが使えるクラス")


def enqueue(data, que):
    print("データ", data, "を追加しました")
    que.append(data)
    return que


def dequeue(que):
    data = que.pop()
    return (que, data)


def main():
    que = collections.deque()

    for ii in range(6):
        que = enqueue(ii, que)

    for ii in range(6):
        (que, data) = dequeue(que)
        print("取り出しデータ：", data)
    # 出力結果：
#               データ 0 を追加しました
#               データ 1 を追加しました
#               データ 2 を追加しました
#               データ 3 を追加しました
#               データ 4 を追加しました
#               データ 5 を追加しました
#               取り出しデータ： 5
#               取り出しデータ： 4
#               取り出しデータ： 3
#               取り出しデータ： 2
#               取り出しデータ： 1
#               取り出しデータ： 0


main()
# 出力結果：


print("以上。")
# 未だにPython2として認識される。
# vim: set requires python 3.9.7:
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=python expandtab:
