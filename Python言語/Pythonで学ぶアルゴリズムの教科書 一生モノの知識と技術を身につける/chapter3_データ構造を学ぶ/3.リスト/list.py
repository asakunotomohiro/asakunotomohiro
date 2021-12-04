# coding:utf-8
#   これを付けなければ、エラーが発生する(Python2だと判断された)。
print("朝来野智博")
print("リスト")

# 紐付き最大数を5つに制限している。
MAX = 5


def add_list(datalist, pointer, data):
    n = -1

    for ii in range(MAX):
        if datalist[ii] is None:
            n = ii
            break

    if n == -1:
        print("データ領域に空きがありません")

        return False, datalist, pointer

    for ii in range(MAX):
        if datalist[ii] is not None and pointer[ii] is None:
            pointer[ii] = n
            break

    datalist[n] = data
    pointer[n] = None
    print("データ", data, "追加。")

    return True, datalist, pointer


def del_list(datalist, pointer, head, data):
    n = -1

    for ii in range(MAX):
        if datalist[ii] == data:
            n = ii
            break

    if n == -1:
        print("データなし。")

        return False, datalist, pointer, head

    if n != head:
        for ii in range(MAX):
            if pointer[ii] == n:
                pointer[ii] = pointer[n]
    else:
        head = pointer[n]
        if head is None:
            head = 0
    datalist[n] = None
    pointer[n] = None
    print("データ", data, "削除。")

    return True, datalist, pointer, head


def put_list(datalist, pointer, head):
    pp = head

    while True:
        print(datalist[pp], end="--->")
        if pointer[pp] is None:
            print("EOF")
            break

        pp = pointer[pp]


def main():
    datalist = [None]*MAX
    pointer = [None]*MAX
    head = 0

    for ii in range(10, 70, 10):
        ret, datalist, pointer = add_list(datalist, pointer, ii)

    ret, datalist, pointer, head = del_list(datalist, pointer, head, 10)
    put_list(datalist, pointer, head)


main()
# 出力結果：
#           データ 10 追加。
#           データ 20 追加。
#           データ 30 追加。
#           データ 40 追加。
#           データ 50 追加。
#           データ領域に空きがありません
#           データ 10 削除。
#           20--->30--->40--->50--->EOF


print("以上。")
# 未だにPython2として認識される。
# vim: set requires python 3.9.7:
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=python expandtab:
