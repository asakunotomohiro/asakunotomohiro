# ドキュメント作成方法
Githubでは、Markdown形式を採用している。  
そのため、とりあえずは、Markdownでの作成方法の勉強を進める。  

## メモ作成方法
見やすいような成形が施されるメモ取りは以下がある。  

* [markdown](#localfileMarkdownJump)  
手軽に始められ、なおかつビューアでの見栄えもいい感じにしてくれるテキストメモの技法。  
* [sphinx](#localfileSphinxJump)  
Pythonのドキュメント作成に使われる技法として有名。  

* その他の軽量マークアップ言語(リンクは、公式外かもしれない)。
  * [Redmine](https://redmine.jp)の[textile記法](https://redmine.jp/tech_note/textile/)  
  * [Typetalk](https://www.typetalk.com/ja/)の[メッセージ整形](https://support.typetalk.com/hc/ja/articles/212900337-メッセージを整形する)  
  * [はてなブログ](https://hatenablog.com)の[はてな記法](https://help.hatenablog.com/entry/text-hatena-list)  
  * [Scrapbox](https://scrapbox.io/product)の[ブラケティング](https://scrapbox.io/help-jp/ブラケティング)  
  * [Pandoc](https://pandoc.org)  
    [日本語版](https://pandoc-doc-ja.readthedocs.io/ja/latest/users-guide.html)  
  * [EtText](http://ettext.taint.org)  
    日本語版はない？  
  * [AsciiDoc](https://asciidoc.org)  
    日本語版はない？  
  * [MkDocs](https://www.mkdocs.org)  
    日本語版はない？  
  * [Slack](https://slack.com)の[メッセージの書式設定](https://slack.com/intl/ja-jp/help/articles/202288908-メッセージの書式設定)  
  * [Re:VIEW](https://reviewml.org/ja/)  
  * [青空文庫](https://www.aozora.gr.jp)の[注記](https://www.aozora.gr.jp/annotation/)  
  * [小説家になろう](https://syosetu.com)の[執筆中の仕様](https://syosetu.com/man/sippitu/)や[ルビ振り](https://syosetu.com/man/ruby/)など？  
  * [カクヨム](https://kakuyomu.jp)の[カクヨム記法](https://kakuyomu.jp/help/entry/notation)  
  * [LeME](https://leme.style)の[Markdown](https://leme.style/making-guide/point-markdown/)  
  * [Org Mode](https://www.orgmode.org/ja/index.html)  

* 作成後のメモ内容変更手段  
  * [sed](#localfileSedJump)  
    ストリームエディタのひとつ。  
  * [awk](#localfileAwkJump)  
    テキスト処理言語のひとつ(この上位版がPerl言語？)。  


<a id="localfileMarkdownJump"></a>
### markdownとは。
文書を記述するための軽量マークアップ言語のひとつ。  
本来はプレーンテキスト形式で手軽に書いた文書からHTMLを生成するために開発されたものである。  

* 利用サービス  
  * [Stack Overflow](https://ja.stackoverflow.com)  
  * [Reddit](https://www.reddit.com)  
  * [GitHub](https://github.com)  
  * [Bitbucket](https://bitbucket.org)  
  * [Tumblr](https://www.tumblr.com)  
  * その他  
    * Posterous  
      ブログのようだが、閉鎖済み。  
    * [Instiki](https://golem.ph.utexas.edu/wiki/instiki/show/HomePage)  
    * [Squarespace](https://www.squarespace.com)  
    * [MultiMarkdown](https://multimarkdown.com)  
    * [CommonMark](https://commonmark.org)  
    * [StackEdit](https://stackedit.io)  


<a id="localfileSphinxJump"></a>
### [sphinx](https://www.sphinx-doc.org/ja/master/contents.html)とは。
本来は、Pythonのソースコードに記述されたpydocコメント整形ツール(軽量マークアップ言語)だった。  
いまや、Python以外のドキュメント作成にも使われている。  


<a id="localfileSedJump"></a>
### sedとは。
ストリームエディタのひとつ。  
ファイルに対して、単純なテキスト変換を行う場合に使う。  

<details><summary>ワンライナー実行例</summary>

以下、一般的なワンライナー実行方法。
```terminal
$ cat README.md
# 本日は晴天なり。
俺が俺にオンデマンド
本日は雨天なり。
本日は曇天なり。
本日は晴天なり。
本日は
晴天なり。

以上。
$ sed -e 's/本日は/来年は/' -e 's/なり。/だ。/' README.md
# 来年は晴天だ。	←☆ここが一部置換されている。
俺が俺にオンデマンド
来年は雨天だ。	←☆ここが一部置換されている。
来年は曇天だ。	←☆ここが一部置換されている。
来年は晴天だ。	←☆ここが一部置換されている。
来年は	←☆ここが一部置換されている。
晴天だ。	←☆ここが一部置換されている。

以上。
$
```
置換作業をしている。  

</details>


<a id="localfileAwkJump"></a>
### awkとは。
awkとは、編集用語で、「へたな・まずい」(awkward)と言う。  
テキスト処理言語のひとつ。  
何より、これが元祖だろう(これに不満を持ったことでが生まれた)。  
データの単純な変換のみが必要な場合に使う。  

Perl言語の開発者であるLarryさんは、awkで対応しようとしたが、思い通りに行かなかったため、Perl言語を作ったと言う。  

<details><summary>ワンライナー実行例</summary>

以下、一般的なワンライナー実行方法。
```terminal
$ cat targetFile.md
# 本日は晴天なり。
俺が俺にオンデマンド	←☆検索に"なり"が含まれていない行は出力対象外。
本日は 雨天, なり。
本日は 曇天, なり。
本日は 晴天, なり。
本日は	←☆検索に"なり"が含まれていない行は出力対象外。
晴天なり。
	←☆検索に"なり"が含まれていない行は出力対象外。
以上。	←☆検索に"なり"が含まれていない行は出力対象外。
$ awk -F, '/なり/ {print $1}' targetFile.md
# 本日は晴天なり。
本日は 雨天	←☆カンマ区切りのため、カンマ後半が切り捨てられて出力されている。
本日は 曇天	←☆カンマ区切りのため、カンマ後半が切り捨てられて出力されている。
本日は 晴天	←☆カンマ区切りのため、カンマ後半が切り捨てられて出力されている。
晴天なり。
$
```
awkも奥が深く、使いこなすには、それなりの相応の勉強時間が必要になる。  

</details>

基本は、このawkと[sed](#localfileSedJump)を組み合わせて使うのが一般的とされている。  

<details><summary>組み合わせの利用例。</summary>

以下、実行例）
```terminal
$ cat targetFile.md
# 本日は晴天なり。
俺が俺にオンデマンド
本日は 雨天, なり。
本日は 曇天, なり。
本日は 晴天, なり。
本日は
晴天なり。

以上。
$ sed -n -e 's/本日は/今後も/' -e 's/なり。/だ。/p' targetFile.md | awk '{print $2}' | awk -F, '{print $1}' | sed -e '/^$/d'	←☆sedとawkの組み合わせ実行。
今後も晴天だ。
雨天
曇天
晴天
$
```
最初の`'s/本日は/今後も/'`は、普通に置換作業をしている。  
その結果をさらに`'s/なり。/だ。/p'`で置換している。  
その後、半角スペース区切り2つ目(`'{print $2}'`)の文字列を出力後、カンマ区切り(`-F, '{print $1}'`)として出力し直す。  
そして、空行を削除(`'/^$/d'`)した結果が出てきている。  

ちょっとした作業には抜群の効果を発揮するが、使いこなすにはsedと同じように莫大な勉強時間を要する。  

</details>


<a id="localfilePerlJump"></a>
### Perlとは。
本来の[Perl記述箇所(ファイル)](Perl言語/README.md)があるため、ここでは紹介に留める。  
上記のawkやsedの拡張版(上位版)のようなプログラミング言語だと言うこと(使いこなすには数年を要する)。  
Perlが開発されたのは1980年代中頃のようだ。  


<a id="localfileTerminologyJump"></a>
## 用語

<a id="localfileTerminologyterm"></a>
* 用語  
  <a id="localfileTerminologytermtitlemarkuplang"></a>
  * [軽量マークアップ言語](#localfileTerminologytermmarkuplang)  


<a id="localfileTerminologytermmarkuplang"></a>
### 軽量マークアップ言語
人間が簡素なテキストエディタを使っての入力が容易になるように設計された言語。  
データ記述言語としての整合性と、可読性や記述の容易さを両立させたもの。  


## 現状
Github用に使っているのではなく、普通にメモ作成にも使っているため、何かしらの記録残しは発生するだろう(自動ビルドの勉強とは異なることが言いたい)。  

以上。
