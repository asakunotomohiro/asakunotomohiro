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
    * psコマンド  
    * timeコマンド  
  * sudoコマンド  
  * lsコマンド  
  * yumコマンド  
  * dnfコマンド  
  * aptコマンド  


<a id="linuxOS_ps_prescribe"></a>
### psコマンド-プロセス管理。
psとは、プロセスのことで、プログラムの実行単位として定義されている。  


以下、オプションなしの実行結果。  
```
$ ps
  PID TTY           TIME CMD
  711 ttys000    0:00.13 -zsh
28038 ttys019    0:00.53 /usr/local/bin/bash
27021 ttys020    0:03.68 -zsh
$
```

以下、3種類のオプション付き実行結果。
```
$ ps aux
USER               PID  %CPU %MEM      VSZ    RSS   TT  STAT STARTED      TIME COMMAND
asakunotomohiro   1463  24.0  1.2 422322480 780320   ??  S     1 323   50:53.17 /Applications/Firefox.app/Contents/MacOS/firefox -foreground
_coreaudiod        386  12.3  0.2 409508464 111920   ??  Ss    1 323  432:42.68 /usr/sbin/coreaudiod
asakunotomohiro    570   4.3  0.9 411372000 591232   ??  S     1 323   16:19.41 /System/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal
asakunotomohiro  11843   2.2  2.0 48402972 1354976   ??  S     3 323  148:13.60 /Applications/LibreWolf.app/Contents/MacOS/librewolf
_gamecontrollerd   513   0.0  0.0 408300208  12976   ??  Ss    1 323    0:16.16 /usr/libexec/gamecontrollerd
asakunotomohiro    512   0.0  0.0 408310768  22208   ??  S     1 323    0:33.09 /usr/libexec/UserEventAgent (Aqua)
root               360   0.0  0.0 408305824  23984   ??  Ss    1 323    2:06.72 /System/Library/PrivateFrameworks/CoreDuetContext.framework/Resources/contextstored
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
  * **COMMAND**  
    プログラムのコマンドとそのオプション。  


<a id="linuxOS_time_prescribe"></a>
### timeコマンド-プロセス管理。


<a id="linuxOS_sudo_prescribe"></a>
### sudoコマンド


<a id="linuxOS_ls_prescribe"></a>
### lsコマンド


<a id="linuxOS_yum_prescribe"></a>
### yumコマンド


<a id="linuxOS_dnf_prescribe"></a>
### dnfコマンド


<a id="linuxOS_apt_prescribe"></a>
### aptコマンド


<a id="memo99999"></a>
## 個人メモ(総合的な優先度の高いメモ)


---
ーーー 最終行 ーーー
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
