print("Hello, World!")

name1 = '朝来野'
name2 = '智博'

print(
    name1, '.', name2, sep='+'  # 出力結果：朝来野+.+智博
)
print(
    name1, '.', name2   # 出力結果：朝来野 . 智博
)
print(name1, name2)    # 出力結果：朝来野 智博
print('''
    name1, name2
''')     # 出力結果：    name1, name2

# raw文字列
print(r'C:\"Windows"\朝来野\智博')    # 出力結果：C:\"Windows"\朝来野\智博

# フォーマット文字列
print(f'Hello {name1} yeaaaaa')    # 出力結果：Hello 朝来野 yeaaaaa

# raw文字列及びフォーマット文字列
print(fr'Hello \{name1}\ "yeaaaaa"')    # 出力結果：Hello \朝来野\ "yeaaaaa"

# 定数
TAX = 1.1
print(100 * TAX)    # 出力結果：110.00000000000001
TAX = 10
print(100 + TAX)    # 出力結果：110

# 変数の破棄
# del name1
# print(name1)    # NameError: name 'name1' is not defined
