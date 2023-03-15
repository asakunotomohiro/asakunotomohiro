# Linux操作作業で得た知見全てをここに記録する。
職場で使うであろうコマンドをここにまとめる。  
もしかしたら仮想環境で構築するかもしれないが、基本のコマンド確認は[Mac](./Mac_作業メモなど何でも詰め込む.md)で行う(であれば、ファイルを分ける必要あるのか？)。  

※勉強の実行環境はMac端末になるため、本来のLinux端末の挙動と変わるかもしれない。  
　絶対に変わる(すでにpsコマンドオプションの有無で異なっている)。  


[個人メモ(総合的な優先度の高いメモ)](#memo99999)  

---
<a id="linuxOperatingSystem"></a>
## [LinuxOS](https://www.kernel.org)

* 目次  
  * プロセス管理  
    * [psコマンド](#linuxOS_ps_prescribe)  
    * [timeコマンド](#linuxOS_time_prescribe)  
  * パーミッション  
    * [sudoコマンド](#linuxOS_sudo_prescribe)  
  * lsコマンド  
  * yumコマンド  
  * dnfコマンド  
  * aptコマンド  
  * ユーザ管理  
    * [ユーザ追加(useradd)コマンド](#linuxOS_useradd_prescribe)  
    * [ユーザ削除(useradd)コマンド](#linuxOS_useradd_prescribe)  


<a id="linuxOS_ps_prescribe"></a>
### psコマンド-プロセス管理。
psとは、プロセスのことで、プログラムの実行単位として定義されている。  


以下、オプションなしの実行結果。  
```terminal
$ ps
  PID TTY           TIME CMD
  711 ttys000    0:00.13 -zsh
28038 ttys019    0:00.53 /usr/local/bin/bash
27021 ttys020    0:03.68 -zsh
$
```

以下、3種類のオプション付き実行結果。
```terminal
$ ps aux
USER               PID  %CPU %MEM      VSZ    RSS   TT  STAT STARTED      TIME COMMAND
asakunotomohiro   1463  24.0  1.2 422322480 780320   ??  S     1 323   50:53.17 /Applications/Firefox.app/Contents/MacOS/firefox -foreground
asakunotomohiro    570   4.3  0.9 411372000 591232   ??  S     1 323   16:19.41 /System/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal
_gamecontrollerd   513   0.0  0.0 408300208  12976   ??  Ss    1 323    0:16.16 /usr/libexec/gamecontrollerd
asakunotomohiro    512   0.0  0.0 408310768  22208   ??  S     1 323    0:33.09 /usr/libexec/UserEventAgent (Aqua)
asakunotomohiro    359   0.0  0.3 410330656 184288   ??  Ss    1 323    3:37.54 /System/Library/CoreServices/loginwindow.app/Contents/MacOS/loginwindow console
　　　・
　　　・
　　　・
$
```
何が何か全く分からない。  

* 解説。  
  * **USER**  
    プログラムユーザ名(プログラムからファイルを触る場合のユーザ名。正確にはユーザ権限)。  
  * **PID**  
    起動中の全プロセス間で一意に割り当てられてプロセスID。  
  * **PPID**  
    PIDの子プロセス。  
  * **STAT**  
    * プロセスの状態。  
      **R**：実行可能状態。  
      **S**：スリープ状態。  
      **Z**：ゾンビ状態。  
      などなど。  
  * **STARTED**(別OSでは**START**表記？)  
    プロセス起動時間。  
  * **TIME**  
    CPUの使用時間。  
  * **COMMAND**  
    プログラムのコマンドとそのオプション。  


<a id="linuxOS_ps_prescribe_relationship"></a>
#### プロセスの親子関係
本来であれば、簡単に確認できるコマンドはあるが、私の環境にはなかった。  

以下、単純確認コマンド。  
```terminal
$ pstree
zsh: command not found: pstree
$
```
本来であれば、親子関係になった状態で表示してくれる。  

以下、代替。
```terminal
$ ps -eo pid,ppid,comm
  PID  PPID COMM
    1     0 /sbin/launchd	←☆システムが起動してから最初に実行されるプロセス(ゆえに、PIDが1になっている)。initシステム。
  287     1 /usr/libexec/logd	←☆PPIDが1のプロセスは、initシステムから直接起動を受けている(他のもそうだが、1以外は間接起動)。
 1463     1 /Applications/Firefox.app/Contents/MacOS/firefox
 1466  1463 /Applications/Firefox.app/Contents/MacOS/plugin-container.app/Contents/MacOS/plugin-container
 1482     1 /usr/libexec/memoryanalyticsd
  570     1 /System/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal
27020   570 login
  513     1 /usr/libexec/gamecontrollerd
  512     1 /usr/libexec/UserEventAgent
  359     1 /System/Library/CoreServices/loginwindow.app/Contents/MacOS/loginwindow
　　　・
　　　・
　　　・
$
```


<a id="linuxOS_time_prescribe"></a>
### timeコマンド-プロセス管理。
プロセスの実行開始から終了までの確認について説明する。  

以下、timeコマンド結果(都合よく改行)。
```terminal
$ time sleep 1	←☆勝手に改行した(本来1行出力)。
sleep 1
0.00s user	←☆プロセス実行から終了までの　プロセスが直接使用したCPU時間。
0.00s system	←☆プロセス実行から終了までの　プロセスの依頼を受けてカーネルが使用したCPU時間。
0% cpu	←☆プロセス実行から終了までの　経過時間？
1.010 total	←☆当該プロセスが使ったCPU時間？
$
```
紙面と異なる結果になった(MacはUnixということで、Linux結果ではないようで・・・)。  

以下、9秒間動き続けるプログラム結果。
```terminal
$ time perl linux_time.pl
v5.36.0	←☆これは気にしない。
perl linux_time.pl  0.00s user 0.01s system 0% cpu 9.025 total	←☆今回気にするのはコッチ。
$
```
**0.00s user**：CPUが直接使用していない？  
**0.01s system**：カーネルが直接使用したのがこの程度？  
**0% cpu**：なぜここが0？　カーネル使用時間に関係ある？  
**9.025 total**：当該プロセスが使用したCPU時間は妥当そうだ。  


<a id="linuxOS_sudo_prescribe"></a>
### sudoコマンド

* 権限用目次  
  * [ファイルタイプの意味と用途](#linuxOS_sudo_prescribe_filetype)  
  * [パーミッション表記](#linuxOS_sudo_prescribe_permission)  
  * [ファイルorディレクトリ作成時の標準権限](#linuxOS_sudo_prescribe_umask)  

前置き作業。  
以下、lsコマンドにて、権限確認。
```terminal
$ ls -alR
total 152
drwxr-xr-x  9 asakunotomohiro  staff    288  3 14 16:48 .
drwxr-xr-x  5 asakunotomohiro  staff    160  3 14 16:49 ..
-rw-r--r--@ 1 asakunotomohiro  staff   6148  3 14 16:48 .DS_Store	←☆ゴミファイル。
-rw-r--r--  1 asakunotomohiro  staff  16384  3 14 16:45 .Linux_作業メモなど何でも詰め込む.md.swp
-rwxr-xr-x  1 asakunotomohiro  staff  27421  3 14 16:42 Android_作業メモなど何でも詰め込む.md
-rwxr-xr-x  1 asakunotomohiro  staff   6161  3 14 16:45 Linux_作業メモなど何でも詰め込む.md
-rwxr-xr-x  1 asakunotomohiro  staff  11150  3 14 16:42 Mac_作業メモなど何でも詰め込む.md
-rw-r--r--  1 asakunotomohiro  staff   3397  3 14 16:42 README.md
drwxr-xr-x  4 asakunotomohiro  staff    128  3 14 16:42 コマンドの実行確認結果

./コマンドの実行確認結果:
total 16
drwxr-xr-x  4 asakunotomohiro  staff  128  3 14 16:42 .
drwxr-xr-x  9 asakunotomohiro  staff  288  3 14 16:48 ..
-rw-r--r--  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go	←☆実行権限を与えていない実行ファイル。
-rwxr--r--  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl	←☆実行ファイル。
$
```
これだけでは理解できない。  

<a id="linuxOS_sudo_prescribe_permission_option"></a>
* パーミッション表記の意味。
  **-rwxrwxrwx**  
  単語分けするならば、**- rwx rwx rwx**となる。  
  * 1文字目：[ファイルタイプ](#linuxOS_sudo_prescribe_filetype)  
  * 2〜4文字目：[ファイルオーナ](#linuxOS_sudo_prescribe_permission)  
    `chmod`指定単語：**u**  
  * 5〜7文字目：[ファイルグループ](#linuxOS_sudo_prescribe_permission)  
    `chmod`指定単語：**g**  
  * 8〜10文字目：[その他のユーザ](#linuxOS_sudo_prescribe_permission)  
    `chmod`指定単語：**o**  


<a id="linuxOS_sudo_prescribe_filetype"></a>
#### ファイルタイプの意味と用途
ファイルタイプは、パーミッションとは無関係。  

|文字|ファイルタイプ|用途|備考|
|:--:|--------------|----|----|
|-|ファイル|テキスト・実行ファイル・データファイルなど。||
|b|ブロックファイル|SSD・HDDなどのブロックデバイスをファイル扱いしたもの||
|c|キャラクタファイル|1文字づつ転送するキャラクタデバイスをファイル扱いしたもの||
|d|ディレクトリ|ディレクトリ|||
|l|シンボリックリンク|WindowsOSのショートカットのようなもの||
|p|FIFO(名前付きパイプ)|FIFOを用いたプロセス間通信に利用するファイル||
|s|Unixドメインソケット|ソケットを用いたプロセス間通信に利用するファイル||
|?|その他ファイルタイプ|判断しにくいファイル(破損可能性大)||


<a id="linuxOS_sudo_prescribe_permission"></a>
#### パーミッション表記
パーミッション表記は、3種類の3種類で表す(何じゃそりゃ)。  


<a id="linuxOS_sudo_prescribe_permission_sign"></a>
パーミッション表示の記号の意味  
**r**：Read-読み込み。  
**w**：Write-書き込み。  
**x**：eXecute-実行。  

|文字|意味|備考|
|:--:|----|----|
|-|権限未設定||
|r|読み込み可能||
|w|書き込み可能||
|x|実行可能(ディレクトリの場合は、中身の確認可能)。||

<a id="linuxOS_sudo_prescribe_permission_labels"></a>
以下、権限付与時の例）
|権限付与例|意味|備考|
|:--------:|----|----|
|**- --- --- ---**|ファイルタイプなし(以下同)・読み書き実行権限なし。||
|**- rwx r-- r--**|オーナの読み書き実行権限あり。グループの読み込み権限あり。その他も読み込み権限あり。||
|**- rwx r-x r-x**|オーナ同上。グループの読み込み実行権限あり。その他も読み込み実行権限あり。||
|**- rwx --- ---**|オーナ同上。グループとその他への権限は何もない。||
|**- rwx rwx r-x**|オーナ同上。グループの読み書き実行権限あり。その他は読みと実行権限あり。||
|**- rw- rw- r--**|オーナの読みと実行権限あり。グループの読みと実行権限あり。その他は読み込みのみ権限あり。||

<a id="linuxOS_sudo_prescribe_permission_chmod"></a>
実際のコマンド例）
`chmod オプションorモード ファイル`  

<a id="linuxOS_sudo_prescribe_permission_chmod_option"></a>
* オプションorモード  
  * オプション  
    [上記](#linuxOS_sudo_prescribe_permission_option)のアルファベットを指定する。  
    また、3種類すべて(オーナ・グループ・その他)の場合は、`a`を用いる。  
    そして、アルファベットの順序は固定。  
    例）`chmod u+rx`(オーナに読み込みと実行権限を付与)  
    * 権限の種類。  
      * `+`：権限を付与する(既存の権限に追加する)。  
      * `-`：権限を剥奪する(既存の権限に追加する)。  
      * `=`：権限を絶対的に指定する(既存の権限はなくなる)。  
  * モード  
    読み込み(`4`)・書き込み(`2`)・実行権限(`1`)を7進数値で指定する(組み合わせる)。  
    例）`chmod 500`(オーナに読み込みと実行権限を付与。それ以外は権限剥奪)  

<a name="entitlementORrevocation_Record"></a>
<details><summary>権限付与または剥奪作業記録。</summary>

* 対象ユーザ指定前提の権限付与  
  * [オーナのみに実行権限を付与する。](#linuxOS_sudo_prescribe_permission_chmod_option_owner_x)  
  * [オーナのみに読み込み権限を付与する。](#linuxOS_sudo_prescribe_permission_chmod_option_owner_r)  
  * [オーナのみに書き込み権限を付与する。](#linuxOS_sudo_prescribe_permission_chmod_option_owner_w)  
  * [グループに読み込み権限を付与する。](#linuxOS_sudo_prescribe_permission_chmod_option_group_r)  
  * [グループに書き込み権限を付与する。](#linuxOS_sudo_prescribe_permission_chmod_option_group_w)  
  * [グループに実行権限を付与する。](#linuxOS_sudo_prescribe_permission_chmod_option_group_x)  
  * [その他にすべての権限を付与する。](#linuxOS_sudo_prescribe_permission_chmod_option_others_all)  
  * [権限の剥奪](#linuxOS_sudo_prescribe_permission_chmod_option_deprivation_authority)  


<a id="linuxOS_sudo_prescribe_allnot_permission"></a>
以下、何も権限がない状態から始める。
```terminal
$ ls -l
total 16
----------  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go
----------  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl
$
```

<a id="linuxOS_sudo_prescribe_permission_chmod_option_owner_x"></a>
以下、オーナに、実行権限付与。
```terminal
$ chmod u+x linux_time.go
$ chmod 100 linux_time.pl
$ ls -l
total 16
---x------  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go
---x------  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl
$
```

<a id="linuxOS_sudo_prescribe_permission_chmod_option_owner_r"></a>
以下、オーナに、読み込み権限付与。
```terminal
$ chmod u+r linux_time.go	←☆読み込み権限を追加付与。
$ chmod 400 linux_time.pl	←☆読み込み権限のみ付与。
$ ls -l
total 16
-r-x------  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go	←☆最初に追加した実行権限が残っている。
-r--------  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl	←☆実行権限がなかったことになっている。
$
$ chmod 500 linux_time.pl	←☆読み込みと実行権限を付与。
$ ls -l
total 16
-r-x------  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go
-r-x------  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl	←☆同じになった。
$
```

<a id="linuxOS_sudo_prescribe_permission_chmod_option_owner_w"></a>
以下、オーナに、書き込み権限付与。
```terminal
$ chmod u+w linux_time.go	←☆書き込み権限を追加付与。
$ chmod 200 linux_time.pl	←☆書き込み権限のみ付与。
$ ls -l
total 16
-rwx------  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go	←☆上記権限が残った状態になっている。
--w-------  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl	←☆指定した権限のみ与えられている。
$
$ chmod 700 linux_time.pl	←☆読み書き実行権限を付与。
$ ls -l
total 16
-rwx------  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go
-rwx------  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl	←☆同じになった。
$
```

<a id="linuxOS_sudo_prescribe_permission_chmod_option_group_r"></a>
以下、グループに読み込み権限付与。
```terminal
$ chmod 740 linux_time.go	←☆オーナには全権限を付与した状態でグループに読み込み権限付与。
$ chmod g=r linux_time.pl	←☆題名通り。
$ ls -l
total 16
-rwxr-----  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go	←☆意図した通り。
-rwxr-----  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl	←☆意図した通り。
$
```

<a id="linuxOS_sudo_prescribe_permission_chmod_option_group_w"></a>
以下、グループに書き込み権限付与。
```terminal
$ chmod 760 linux_time.go	←☆オーナには全権限を付与した状態でグループに読み込み権限など付与。
$ chmod g=w linux_time.pl	←☆題名通り。
$ ls -l
total 16
-rwxrw----  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go	←☆意図した通り。
-rwx-w----  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl	←☆書き込み権限のみが付与されている(既存失効)。
$
$ chmod g+r linux_time.pl	←☆プラス記号を用いて追加付与した。
$ ls -l
total 16
-rwxrw----  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go
-rwxrw----  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl	←☆権限がそろった。
$
```

<a id="linuxOS_sudo_prescribe_permission_chmod_option_group_x"></a>
以下、グループに実行権限付与。
```terminal
$ chmod 770 linux_time.go	←☆オーナには全権限を付与した状態でグループに実行権限など付与。
$ chmod g=x linux_time.pl	←☆題名通り。
$ ls -l
total 16
-rwxrwx---  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go	←☆意図した通り。
-rwx--x---  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl	←☆実行権限のみが付与されている(既存失効)。
$
$ chmod g+rw linux_time.pl	←☆プラス記号を用いて2種類の権限を追加付与した。
$ ls -l
total 16
-rwxrwx---  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go
-rwxrwx---  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl	←☆権限がそろった。
$
```

<a id="linuxOS_sudo_prescribe_permission_chmod_option_others_all"></a>
以下、その他にすべて(読み書き実行)の権限付与。
```terminal
$ chmod o+rwx linux_time.go	←☆グループに全権限を追加付与だが、3種類すべてになるため、追加付与か判断できず。
$ chmod o=rwx linux_time.pl	←☆グループに全権限を絶対付与だが、3種類すべてになるため、新規付与か判断できず。
$ ls -l
total 16
-rwxrwxrwx  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go	←☆意図した通り。
-rwxrwxrwx  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl	←☆意図した通り。
$
```

<a id="linuxOS_sudo_prescribe_permission_chmod_option_deprivation_authority"></a>
以下、権限の剥奪。
```terminal
$ chmod o-rw  linux_time.go	←☆その他から読み書き権限剥奪。
$ chmod a-rwx linux_time.pl	←☆3種類(オーナ・グループ・その他)から全権限剥奪
$ ls -l
total 16
-rwxrwx--x  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go
----------  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl
$
$ chmod u=rw  linux_time.go
$ chmod a=rwx linux_time.pl	←☆3種類に全権限付与。
$ ls -l
total 16
-rw-rwx--x  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go
-rwxrwxrwx  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl
$
$ chmod ug= linux_time.go	←☆オーナ・グループの2種類から全権限剥奪(正確には、"権限なし"を付与する)。
$ chmod a=  linux_time.pl	←☆3種類から全権限剥奪(正確には、"権限なし"を付与する)。
$ ls -l
total 16
---------x  1 asakunotomohiro  staff  253  3 14 16:42 linux_time.go	←☆その他の権限のみ残る。
----------  1 asakunotomohiro  staff  160  3 14 16:42 linux_time.pl	←☆意図した通り(権限が一切ない)。
$
$
```

</details>

<a id="linuxOS_sudo_prescribe_umask"></a>
#### ファイルorディレクトリ作成時の標準権限
標準権限は`umask`コマンドで確認できる。  
しかし、**zsh**では作成標準権限の確認ができそうにない。  

* 作業。  
  * [ファイルとディレクトリのパーミッション初期値確認](#linuxOS_sudo_prescribe_umask_standardPermissionsFilesDirectories)  
  * [パーミッション初期値の変更](#linuxOS_sudo_prescribe_umask_changeStandardPermissions)  

```terminal
$ umask -p	←☆zshでの確認(どういうこと？)。
umask: bad option: -p
$
```

以下、bash上でファイルやディレクトリの作成標準権限を確認。
```terminal
$ umask -p
umask 0002
$
```
※先頭1文字目(左端)は、セキュリティファイルなどに誰でも書き込み以外の権限を付与する場所(語弊のある表現？)。  

以下、ファイル・ディレクトリ作成時の権限確認。
```terminal
$ umask -p
umask 0002
$ touch linux_umask1.txt	←☆ファイル作成。
$ mkdir linux_umask1	←☆ディレクトリ作成。
$ ls -l
total 0
drwxrwxr-x  2 asakunotomohiro  staff  64  3 15 15:51 linux_umask1	←☆オーナ・グループは、すべて権限あり。その他は読み込み実行あり。
-rw-rw-r--  1 asakunotomohiro  staff   0  3 15 15:47 linux_umask1.txt	←☆オーナ・グループは、読み書き権限あり。その他は読み込み権限あり(セキュリティ的に不安あり)。
$
```

<a id="linuxOS_sudo_prescribe_umask_standardPermissionsFilesDirectories"></a>
以下、ファイルとディレクトリのパーミッション初期値。  

|種類|初期値(8進数)|パーミンションフラグ|
|----|:-----------:|--------------------|
|ファイル|666|**rw- rw- rw-**|
|ディレクトリ|777|**rwx rwx rwx**|

上記の初期値からumaskの差分にて、作成時の権限が決まる。  

以下、差分の計算。
```text
・ファイルの場合。
  初期値 0666  - rw- rw- rw-
  umask  0002  - --- --- -w-
  --------------------------
  結果   0664  - rw- rw- r--

・ディレクトリの場合。
  初期値 0777  d rwx rwx rwx
  umask  0002  - --- --- -w-
  --------------------------
  結果   0775  d rwx rwx r-x
```

<a id="linuxOS_sudo_prescribe_umask_changeStandardPermissions"></a>
以下、パーミッション初期値の変更方法。  
```terminal
$ umask -p
umask 0002	←☆変更前。
$ umask 0022	←☆標準権限変更。
$ umask -p
umask 0022	←☆変更後。
$
```

以下、ファイル作成により、変更の確認。
```terminal
$ umask -p
umask 0022
$ touch linux_umask2.txt
$ mkdir linux_umask2
$ ls -l
total 0
drwxrwxr-x  2 asakunotomohiro  staff  64  3 15 15:51 linux_umask1
-rw-rw-r--  1 asakunotomohiro  staff   0  3 15 15:47 linux_umask1.txt	←☆権限変更前に作成したファイル(セキュリティ不安)。
drwxr-xr-x  2 asakunotomohiro  staff  64  3 15 15:53 linux_umask2	←☆オーナはすべて権限あり。グループ・その他は読み込み実行あり。
-rw-r--r--  1 asakunotomohiro  staff   0  3 15 15:53 linux_umask2.txt	←☆権限変更後に作成したファイル(セキュリティ安心)。
$
```


<a id="linuxOS_ls_prescribe"></a>
### lsコマンド


<a id="linuxOS_yum_prescribe"></a>
### yumコマンド


<a id="linuxOS_dnf_prescribe"></a>
### dnfコマンド


<a id="linuxOS_apt_prescribe"></a>
### aptコマンド


<a id="linuxOS_useradd_prescribe"></a>
### useraddコマンド
[権限](#linuxOS_sudo_prescribe)確認のために、他ユーザが必須だ。  
ということで、作成および作業終了後は削除することにした。  
※現在、Mac上で作業しているため、ユーザ一覧表示用コマンドは別ファイルを[参照](./Mac_作業メモなど何でも詰め込む.md#macOperatingSystemreorder_dscl)すること。  


<a id="memo99999"></a>
## 個人メモ(総合的な優先度の高いメモ)


---
ーーー 最終行 ーーー
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
