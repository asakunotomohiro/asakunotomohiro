# findの利用で得た知見をすべてここにメモを残す。

[個人メモ(総合的な優先度の高いメモ)](#memo99999)  


## 利用OS
利用しているOSでfindが使えるため、そのOSごとにも記録を付けていきたい。  

* [Mac](https://support.apple.com/ja-jp/guide/terminal/apdb66b5242-0d18-49fc-9c47-a2498b7c91d5/mac)  
* [Linux](https://www.kernel.org)  
  [英語の手引き書](https://www.kernel.org/doc/html/latest/)  
* Windows  

### その他
[zsh を Mac のデフォルトシェルとして使う](https://support.apple.com/ja-jp/HT208050)  

## コマンド
[CICS Transaction Server for z/OS 5.6](https://www.ibm.com/docs/en/cics-ts/5.6?topic=functions-find)
と
[z/OS 2.2.0](https://www.ibm.com/docs/en/zos/2.2.0?topic=reference-find)
の両方で`find`の記述を見つけたが、どう違う？  
そもそもIBMのLinuxは一般的なのか？  

様式：
`FIND( string , phrase)`  

Macの説明：
`find [-H | -L | -P] [-EXdsx] [-f path] path ... [expression]`  
`find [-H | -L | -P] [-EXdsx] -f path [path ...] [expression]`  


### 私の使いたいfindコマンド
テキストファイルから特定の文字列を検索したい。  

コマンド例）
`find . -name "*.txt" -type f -exec grep "正規表現" {} \;`  
`find . -name "*.txt" -type f | xargs grep "正規表現";`  

```terminal
$ ll -R | egrep '^\.|.*md$'	←☆表示結果が実態とは逆で表示されている(気持ち悪いぞ)。
-rw-r--r--  1 asakunotomohiro  staff   49  8 19 12:58 README.md
./検索利用メモ:
-rw-r--r--   1 asakunotomohiro  staff    2028  9 13 17:50 findの勉強_作業メモなど何でも詰め込む.md
-rw-r--r--   1 asakunotomohiro  staff  191560  9 12 22:06 正規表現の勉強_作業メモなど何でも詰め込む.md
-rw-r--r--   1 asakunotomohiro  staff    1153  9  5 14:20 README.md
./検索利用メモ/Perl言語の勉強(正規表現利用に限る):
$ ll -R | grep md$
-rw-r--r--  1 asakunotomohiro  staff   49  8 19 12:58 README.md
-rw-r--r--   1 asakunotomohiro  staff    1653  9 13 17:46 findの勉強_作業メモなど何でも詰め込む.md
-rw-r--r--   1 asakunotomohiro  staff  191560  9 12 22:06 正規表現の勉強_作業メモなど何でも詰め込む.md
-rw-r--r--   1 asakunotomohiro  staff    1153  9  5 14:20 README.md
$ find . -name "*.md" -type f -exec grep "最終行" {} \;	←☆findコマンドとgrepにて、2行のファイルを見つけた。
ーーー 最終行 ーーー
ーーー 最終行 ーーー
```
とりあえず、2ファイルが該当するのだろう。  

以下、ファイルの末尾数行を表示確認した。
```terminal
$ tail -3 検索利用メモ/findの勉強_作業メモなど何でも詰め込む.md	←☆このファイルにはある。

ーーー 最終行 ーーー
<!-- vim: set ts=4 sts=4 sw=4 tw=0 expandtab: -->
$ tail -3 検索利用メモ/正規表現の勉強_作業メモなど何でも詰め込む.md	←☆このファイルにもある。

ーーー 最終行 ーーー
<!-- vim: set ts=4 sts=4 sw=4 tw=0 expandtab: -->
$ tail -3 検索利用メモ/README.md	←☆このファイルにはない。
検索するのは手段でしかないため、記録に残し忘れることが多々あることだろう。

以上。
$ tail -3 README.md
# asakunotomohiro
俺が俺にオンデマンド
$
```

ファイル行数のみでは分からないため、ファイル名も付けた。
```
$ find . -name "*.md" -type f -exec grep -nr "最終行" {} \;	←☆ファイル名と行数を付けて表示した。
./検索利用メモ/正規表現の勉強_作業メモなど何でも詰め込む.md:4246:ーーー 最終行 ーーー
./検索利用メモ/findの勉強_作業メモなど何でも詰め込む.md:45:ーーー 最終行 ーーー
$
```
オプション`-r`は、ディレクトリを潜る意味なのだが、その副作用でファイル名が表示されるのだろう。  



もう一つのコマンド結果
```terminal
$ find . -name "*.md" -type f | xargs grep "最終行";	←☆xargsコマンドを使った検索。
./検索利用メモ/正規表現の勉強_作業メモなど何でも詰め込む.md:ーーー 最終行 ーーー
./検索利用メモ/findの勉強_作業メモなど何でも詰め込む.md:ーーー 最終行 ーーー
$ find . -name "*.md" -type f | xargs grep -rn "最終行";	←☆上記と同じように、ファイル名と行数を付けた。
./検索利用メモ/正規表現の勉強_作業メモなど何でも詰め込む.md:4246:ーーー 最終行 ーーー
./検索利用メモ/findの勉強_作業メモなど何でも詰め込む.md:40:ーーー 最終行 ーーー
$
```




ーーー 最終行 ーーー
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
