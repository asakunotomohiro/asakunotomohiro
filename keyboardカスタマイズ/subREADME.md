# キーボード
キーボードについての話題と言うより、私専用にキーマップの配置を記録する。  
配置の書き換え方法を記録表現が適切だろうか。  

<a id="keyboard"></a>
## キーボードのキーマップ変更
現在所持しているキーボードでキーマップを変更する方法は数種類ある。  
その中でもQMKを用いたキーボードを長らく利用しているため、主にQMK利用について記録する。
それ以外も存在することを記録しておく。  

* キーマップ設定方法  
  * [QMK](#keyboard_qmk)  


<a id="keyboard_qmk"></a>
## QMKによるキーマップ変更方法について。
私は、QMKを使い、組み立てたキーボードにキーマップを書き込んでいる。  
大本：<https://github.com/qmk/qmk_firmware>  
正確には、自分専用に作成したキーマップをキーボードに書き込んでいる(結局一緒の表現か？)。  

* 作業手順  
  1. [大本のブランチをフォークする。](#keyboard_qmk_forks)  


<a id="keyboard_qmk_forks"></a>
### ブランチフォーク
大本：<https://github.com/qmk/qmk_firmware>  
※Githubにログイン前提。  

* フォーク手順  
  1. ブランチ名の右側に「**Fork**」項目があり、その右側の下向き星印をクリックする。  
     プルダウンが表示されること。  
  1. 新しいフォークを選ぶ。  
     「**Create a new fork**」をクリックすること。  
  1. フォーク画面にそれぞれ記入する。  
     * リポジトリ名を付ける(混乱しないためにも同名が望ましいだろう)。  
     * 一言説明を付ける(**Description**はオプションだが変更せずにそのままで問題ない)。  
     * マスターブランチのみコピーを選ぶ(私は**Copy the `master` branch only**にチェックしたが、好みで)。  
  1. **Create fork**ボタン押下する。  
     フォークが行われる。  

* クローン手順  
  1. ローカルにクローンする(思ったより時間かかる)。  
     `git clone git@github.com:asakunotomohiro/qmk_firmware.git`  

```terminal
$ git clone git@github.com:asakunotomohiro/qmk_firmware.git -b master qmk_firmware20230621
Cloning into 'qmk_firmware20230621'...
remote: Enumerating objects: 448751, done.
remote: Counting objects: 100% (36/36), done.
remote: Compressing objects: 100% (30/30), done.
remote: Total 448751 (delta 9), reused 12 (delta 4), pack-reused 448715
Receiving objects: 100% (448751/448751), 247.93 MiB | 1.52 MiB/s, done.
Resolving deltas: 100% (227884/227884), done.
Updating files: 100% (35573/35573), done.
$ echo $?
0
$
```


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
