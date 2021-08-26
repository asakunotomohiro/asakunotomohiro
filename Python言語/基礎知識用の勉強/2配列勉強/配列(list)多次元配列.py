# 基本的なリスト
asakuno = ['朝来野', '智博', ]
print(asakuno)
# 出力結果：['朝来野', '智博']

asakuno = [
    ['朝', '来', '野',
        ['智', '博', ]
     ]
]
print(asakuno)
# 出力結果：[['朝', '来', '野', ['智', '博']]]
print(asakuno[0][1])
# 出力結果：来
print(asakuno[0][3][1])
# 出力結果：博

# 以上。
