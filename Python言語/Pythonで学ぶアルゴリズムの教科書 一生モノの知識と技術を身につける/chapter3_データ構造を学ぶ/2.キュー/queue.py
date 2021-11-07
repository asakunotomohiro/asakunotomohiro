# coding:utf-8
#   これを付けなければ、エラーが発生する(Python2だと判断された)。
print("朝来野智博")
print("キュー")

# 積み上げる最大数を5つに制限している(キューへの積み上げ最大数+1)。
MAX = 6


def enqueue(data, que, head, tail):
    nt = (tail+1) % MAX

    if nt == head:
        print("これ以上、データ積み上げ不可。")
    else:
        que[tail] = data
        tail = nt
        print("データ", data, "を追加しました")

    return (que, tail)


def dequeue(que, head, tail):
    if head == tail:
        print("取り出しデータなし。")
        return (que, None, head)
    else:
        data = que[head]
        head = (head+1) % MAX
        return (que, data, head)


def main():
    que = [0] * MAX
    head = 0
    tail = 0

    for ii in range(6):
        (que, tail) = enqueue(ii, que, head, tail)

    for ii in range(6):
        (que, data, head) = dequeue(que, head, tail)
        print("取り出しデータ：", data)
    # 出力結果：
#               データ 0 を追加しました
#               データ 1 を追加しました
#               データ 2 を追加しました
#               データ 3 を追加しました
#               データ 4 を追加しました
#               これ以上、データ積み上げ不可。
#               取り出しデータ： 0
#               取り出しデータ： 1
#               取り出しデータ： 2
#               取り出しデータ： 3
#               取り出しデータ： 4
#               取り出しデータなし。
#               取り出しデータ： None


main()
# 出力結果：


print("以上。")
# 未だにPython2として認識される。
# vim: set requires python 3.9.7:
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=python expandtab:
