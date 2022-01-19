# coding:utf-8
#   これを付けなければ、エラーが発生する(Python2だと判断された)。
import queue
print("朝来野智博")

print("スタックとキューを扱うPythonのモジュール")
MAX = 10


# 以下、キュー用関数
def que():
    print("キュー開始")
    que = queue.Queue()
    for ii in range(MAX):
        que.put(ii)
    for ii in range(MAX):
        print(que.get(), end="⇒")
    print("\n")


# 以下、スタック用関数
def sta():
    print("スタック開始")
    sta = queue.LifoQueue()
    for ii in range(MAX):
        sta.put(ii)
    for ii in range(MAX):
        print(sta.get(), end="⇒")
    print("\n")


# 以下、プログラム
def main():
    print("以下、キュー用関数呼び出し。")
    que()
    print("以下、スタック用関数呼び出し。")
    sta()


main()
# 出力結果：
#           以下、キュー用関数呼び出し。
#           キュー開始
#           0⇒1⇒2⇒3⇒4⇒5⇒6⇒7⇒8⇒9⇒
#
#           以下、スタック用関数呼び出し。
#           スタック開始
#           9⇒8⇒7⇒6⇒5⇒4⇒3⇒2⇒1⇒0⇒


print("以上。")
# 未だにPython2として認識される。
# vim: set requires python 3.9.7:
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=python expandtab:
