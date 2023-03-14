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
  * sudoコマンド  
  * lsコマンド  
  * yumコマンド  
  * dnfコマンド  
  * aptコマンド  


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
asakunotomohiro  11843   2.2  2.0 48402972 1354976   ??  S     3 323  148:13.60 /Applications/LibreWolf.app/Contents/MacOS/librewolf
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
 1474  1463 /Applications/Firefox.app/Contents/MacOS/plugin-container.app/Contents/MacOS/plugin-container
 1480     1 /System/Library/Frameworks/Metal.framework/Versions/A/XPCServices/MTLCompilerService.xpc/Contents/MacOS/MTLCompilerService
 1482     1 /usr/libexec/memoryanalyticsd
 1475  1463 /Applications/Firefox.app/Contents/MacOS/plugin-container.app/Contents/MacOS/plugin-container
  570     1 /System/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal
  693   570 login
 3981   570 login
14573   570 login
51090   570 login
27020   570 login
11843     1 /Applications/LibreWolf.app/Contents/MacOS/librewolf
11844 11843 /Applications/LibreWolf.app/Contents/MacOS/plugin-container.app/Contents/MacOS/plugin-container
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

```terminal
$ time sleep 1	←☆勝手に改行した(本来1行出力)。
sleep 1
0.00s user	←☆プロセス実行から終了までの　プロセスが直接使用したCPU時間。
0.00s system	←☆プロセス実行から終了までの　プロセスの依頼を受けてカーネルが使用したCPU時間。
0% cpu	←☆プロセス実行から終了までの　経過時間？
1.010 total	←☆当該プロセスが使ったCPU時間？
$
```
本来のLinux環境と異なるため、勉強にならないぞ。  

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
