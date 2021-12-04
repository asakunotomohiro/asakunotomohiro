# coding:utf-8
#   これを付けなければ、エラーが発生する(Python2だと判断された)。
print("朝来野智博")
print("リスト")

# 紐付き最大数を5つに制限している。
MAX = 5


def add_list(datalist, data):
    datalist.append(data)
    print("データ", data, "追加。")

    return True, datalist


def del_list(datalist, data):
    datalist.remove(data)
    print("データ", data, "削除。")

    return True, datalist


def put_list(datalist):
    for index, data in enumerate(datalist):
        print(data, end="--->")

    print("EOF")


def main():
    datalist = []

    for ii in range(10, 70, 10):
        ret, datalist = add_list(datalist, ii)

    ret, datalist = del_list(datalist, 10)
    put_list(datalist)


main()
# 出力結果：
#       データ 10 追加。
#       データ 20 追加。
#       データ 30 追加。
#       データ 40 追加。
#       データ 50 追加。
#       データ 60 追加。
#       データ 10 削除。
#       20--->30--->40--->50--->60--->EOF


print("以上。")
# 未だにPython2として認識される。
# vim: set requires python 3.9.7:
# vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=python expandtab:
