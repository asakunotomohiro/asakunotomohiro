# Markdown作成作業で得た知見全てをここに記録する。

[個人メモ(総合的な優先度の高いメモ)](#memo99999)  

---
## 参考URL
公式ページ(英語)：
[Daring Fireball](https://daringfireball.net/projects/markdown/)  

日本のページ：
[日本語Markdownユーザー会](https://www.markdown.jp/what-is-markdown/)  
[GitHubでのMarkdown執筆](https://docs.github.com/ja/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)  
[Bitbucket-Markdown構文ガイド](https://ja.confluence.atlassian.com/bitbucketserver/markdown-syntax-guide-776639995.html)  
[Qiita-Markdown記法チートシート](https://qiita.com/Qiita/items/c686397e4a0f4f11683d)  

* 以下も考慮する。  
  * [Stack Overflow](https://ja.stackoverflow.com)  
  * [Reddit](https://www.reddit.com)  
  * [GitHub](https://github.com)  
  * [Bitbucket](https://bitbucket.org)  
  * [Qiita](https://qiita.com)  
  * [Tumblr](https://www.tumblr.com)  

上記で考慮するサービスを以下のひな形に当てはめて使う。  
<details><summary>ひな形(目次もどき)</summary>

以下のひな形を使う。  
必要に応じて必要なサービスだけを利用する。  

    ##### [タイトル]
    [大まかな概要を記述]

    以下、言語ごとの細かい方言(違い)を説明する。  
    * 一覧  
      * [Stack Overflow](#planemarkdownSnsserviceStackoverflow[大本の番号])  
      * [Reddit](#planemarkdownSnsserviceReddit[大本の番号])  
      * [GitHub](#planemarkdownSnsserviceGithub[大本の番号])  
      * [Bitbucket](#planemarkdownSnsserviceBitbucket[大本の番号])  
      * [Qiita](#planemarkdownSnsserviceQiita[大本の番号])  
      * [Tumblr](#planemarkdownSnsserviceTumblr[大本の番号])  

    <a name="planemarkdownSnsserviceStackoverflow[大本の番号]"></a>
    ###### Stack Overflow

    <a name="planemarkdownSnsserviceReddit[大本の番号]"></a>
    ###### Reddit

    <a name="planemarkdownSnsserviceGithub[大本の番号]"></a>
    ###### GitHub

    <a name="planemarkdownSnsserviceBitbucket[大本の番号]"></a>
    ###### Bitbucket

    <a name="planemarkdownSnsserviceQiita[大本の番号]"></a>
    ###### Qiita

    <a name="planemarkdownSnsserviceTumblr[大本の番号]"></a>
    ###### Tumblr

</details>

---
## 参考書籍(1冊目)。
書籍：[Markdownライティング入門　プレーンテキストで気楽に書こう！（技術の泉シリーズ(NextPublishing)）](#nextpublishingMarkdown9784844398363contents)  
ISBN：978-4844398363  
ASIN：B07L5GDCMM  
著者：藤原 惟  
発行：2018/12/14 発売日  
出版社：インプレスR&D, PDF版  
関連先URL：<https://nextpublishing.jp/book/10278.html>  
形式：オンデマンド(ペーパーバック)  


<!-- 目次部分(リンクになるところ) -->
<a id="nextpublishingMarkdown9784844398363contents"></a>
## [目次](#nextpublishingMarkdown9784844398363)
1. 章 [プレーンテキストとMarkdown](#planetextmarkdown100001)  
   1. [プレーンテキストの勧め](#planetextmarkdown110001)  
   1. [Markdownはプレーンテキストで文章を書くための記法](#planetextmarkdown110002)  
   1. [Markdownアプリの例](#planetextmarkdown110003)  
   1. [本書におけるMarkdownの定義](#planetextmarkdown110004)  
1. 章 [ミニマムMarkdown](#planetextmarkdown100002)  
   1. [Markdownが満たすべき最低限の原則＝ミニマムMarkdown](#planetextmarkdown120001)  
   1. [プレーンテキストで書く／段落は空行で区切る／ファイルの拡張子は「.md」](#planetextmarkdown120002)  
1. 章 [Markdownで書いてみよう](#planetextmarkdown100003)  
   1. [Markdown専用エディタをインストールしよう](#planetextmarkdown130001)  
   1. [ミニマムMarkdownで書いてみよう](#planetextmarkdown130002)  
1. 章 [きほんのMarkdown](#planetextmarkdown100004)  
   1. [太字／見出し／リンク／画像／引用／番号なしリスト／番号付きリスト／水平線／コード／コードブロック](#planetextmarkdown140001)  
1. 章 [Markdownライティングを実践しよう](#planetextmarkdown100005)  
   1. [道具：Typora（Markdown専用エディタ）](#planetextmarkdown150001)  
   1. [考え方：2段階執筆（下書き段階と清書段階）](#planetextmarkdown150002)  
   1. [はてなブログでMarkdownライティング](#planetextmarkdown150003)  
   1. [WordPressでMarkdownライティング](#planetextmarkdown150004)  
1. 章 [Markdownをさらに活用する](#planetextmarkdown100006)  
   1. [さまざまなツールで書くMarkdown](#planetextmarkdown160001)  
   1. [Markdown文書からリッチテキストへ](#planetextmarkdown160002)  
   1. [MarkdownとHTML](#planetextmarkdown160003)  
   1. [Markdownを活用するための小技](#planetextmarkdown160004)  
1. 章 [GitHub Flavored Markdown（GFM）](#planetextmarkdown100007)  
   1. [表／タスクリスト／打ち消し線／拡張自動リンク／絵文字／シンタックスハイライト](#planetextmarkdown170001)  
   1. [注意：GitHub Flavored Markdown Specにない記法](#planetextmarkdown170002)  
1. 章 [Markdownとは何か？](#planetextmarkdown100008)  
   1. [Markdownの定義](#planetextmarkdown180001)  
   1. [特筆すべきMarkdown方言の一覧](#planetextmarkdown180002)  
   1. [MarkdownとCommonMarkの思想と歴史](#planetextmarkdown180003)  
1. 付録 [アプリのインストール・設定方法](#planetextmarkdown199999)  
1. [個人メモ](#memo1999)  

---
## 参考書籍(2冊目)。
書籍：  
ISBN：  
ASIN：  
著者：  
訳者：  
発行：YYYY/MM/DD 発売日  
出版社：  
関連先URL：<URL>  
形式：単行本  

### 目次
1. [個人メモ](#memo2999)  

---
<!-- リンク先(目次部分のリンクの飛び先) -->
## ーーー　上位、後ろの章になり、下側に若い章が来る。  

<a id="memo99999"></a>
## 個人メモ(総合的な優先度の高いメモ)



---
<a id="nextpublishingMarkdown9784844398363"></a>
## 書籍：1冊目

<a id="planetextmarkdown199999"></a>
### 付録：アプリのインストール・設定方法


<a id="planetextmarkdown100008"></a>
### Markdownとは何か？

<a id="planetextmarkdown180001"></a>
#### Markdownの定義

<a id="planetextmarkdown180002"></a>
#### 特筆すべきMarkdown方言の一覧

<a id="planetextmarkdown180003"></a>
#### MarkdownとCommonMarkの思想と歴史


<a id="planetextmarkdown100007"></a>
### GitHub Flavored Markdown（GFM）

<a id="planetextmarkdown170001"></a>
#### 表／タスクリスト／打ち消し線／拡張自動リンク／絵文字／シンタックスハイライト

<a id="planetextmarkdown170002"></a>
#### 注意：GitHub Flavored Markdown Specにない記法

<a id="planetextmarkdown100006"></a>
### Markdownをさらに活用する

<a id="planetextmarkdown160001"></a>
#### さまざまなツールで書くMarkdown

<a id="planetextmarkdown160002"></a>
#### Markdown文書からリッチテキストへ

<a id="planetextmarkdown160003"></a>
#### MarkdownとHTML

<a id="planetextmarkdown160004"></a>
#### Markdownを活用するための小技

<a id="planetextmarkdown100005"></a>
### Markdownライティングを実践しよう

<a id="planetextmarkdown150001"></a>
#### 道具：Typora（Markdown専用エディタ）

<a id="planetextmarkdown150002"></a>
#### 考え方：2段階執筆（下書き段階と清書段階）

<a id="planetextmarkdown150003"></a>
#### はてなブログでMarkdownライティング

<a id="planetextmarkdown150004"></a>
#### WordPressでMarkdownライティング

<a id="planetextmarkdown100004"></a>
### きほんのMarkdown

<a id="planetextmarkdown140001"></a>
#### 太字／見出し／リンク／画像／引用／番号なしリスト／番号付きリスト／水平線／コード／コードブロック


<a id="planetextmarkdown100003"></a>
### Markdownで書いてみよう

<a id="planetextmarkdown130001"></a>
#### Markdown専用エディタをインストールしよう

<a id="planetextmarkdown130002"></a>
#### ミニマムMarkdownで書いてみよう


<a id="planetextmarkdown100002"></a>
### ミニマムMarkdown

<a id="planetextmarkdown120001"></a>
#### Markdownが満たすべき最低限の原則＝ミニマムMarkdown

<a id="planetextmarkdown120002"></a>
#### プレーンテキストで書く／段落は空行で区切る／ファイルの拡張子は「.md」


<a id="planetextmarkdown100001"></a>
### プレーンテキストとMarkdown

<a id="planetextmarkdown110001"></a>
#### プレーンテキストの勧め

<a id="planetextmarkdown110002"></a>
#### Markdownはプレーンテキストで文章を書くための記法

<a id="planetextmarkdown110003"></a>
#### Markdownアプリの例

<a id="planetextmarkdown110004"></a>
#### 本書におけるMarkdownの定義

<a id="memo1999"></a>
### 個人メモ


---
ーーー 最終行 ーーー
<!-- vim:set ts=4 sts=4 sw=4 tw=0: -->
