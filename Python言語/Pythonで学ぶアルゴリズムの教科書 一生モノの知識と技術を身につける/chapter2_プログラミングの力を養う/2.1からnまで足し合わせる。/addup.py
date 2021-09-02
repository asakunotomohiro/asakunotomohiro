print("朝来野智博")

#   作業1回目。
addsum = 0
for ii in range(1, 11):
    # 1から10までを1づつ加算していく。
    addsum = addsum + ii
print(addsum)   # 55

#   作業2回目。
def addup(count):
    addsum = 0
    for ii in range(1, count+1):
        addsum = addsum + ii
    return addsum
print(addup(10) )   # 55

#   作業3回目。
def addup_Gauss(count):
    addsum = (1+count)*count/2
    return int(addsum)
print(addup_Gauss(10))  # 55

#   作業4回目。
def gauss_start_end(start, end):
    addsum = (start+end)*(end-start+1)/2
    return int(addsum)
print(gauss_start_end(1, 10))   # 55
print(gauss_start_end(1, 100))   # 5050
print(gauss_start_end(100, 5050))   # 12748825　あっているか不明。

#   作業5回目(4回目を改良)。
def gauss_start_end_kai(start, end):
    if start < end:
        addsum = (start+end)*(end-start+1)/2
    else:
        addsum = 0
    return int(addsum)

print(gauss_start_end_kai(1, 10))   # 55
print(gauss_start_end_kai(5, 10))   # 45
print(gauss_start_end_kai(10, 1))   # 0
print(gauss_start_end_kai(10, 10))   # 0
print(gauss_start_end_kai(100, 5050))   # 12748825　あっているか不明。




print("以上。")
