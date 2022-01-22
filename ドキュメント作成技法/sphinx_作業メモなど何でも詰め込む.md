# Sphinx作成作業で得た知見全てをここに記録する。

[個人メモ(総合的な優先度の高いメモ)](#memo99999)  

---
## 参考URL
公式ページ：
[sphinx](https://www.sphinx-doc.org/ja/master/)  
[コミュニティ](https://sphinx-users.jp)  




---
## 参考書籍(1冊目)。
書籍：[Sphinxをはじめよう 第2版](#oreillySphinxBook9784873118192contents)  
ISBN：978-4873118192  
ASIN：なし。  
著者：清水川貴之  
著者：小宮健  
著者：山田剛  
著者：若山史郎  
発行：2017年10月 発売日  
出版社：オライリージャパン  
関連先URL：<https://www.oreilly.co.jp/books/9784873118192/>  
　　サポートページ：<https://github.com/getstart-sphinx/getstart-sphinx>  
形式：  


<!-- 目次部分(リンクになるところ) -->
<a id="oreillySphinxBook9784873118192contents"></a>
## [目次](#oreillySphinxBook9784873118192)
1. [はじめに](#sphinxOreillyBook900001)  
1. 章 [Sphinxとは](#sphinxOreillyBook100001)  
   1. [Sphinxを何に使うのか](#sphinxOreillyBook110001)  
      1. [Sphinxで技術ドキュメントを書く](#sphinxOreillyBook112001)  
      1. [SphinxでWebサイトを作成する](#sphinxOreillyBook112002)  
      1. [Sphinxで本を書く](#sphinxOreillyBook112003)  
      1. [その他色々](#sphinxOreillyBook112004)  
      1. [Sphinxが向かない分野](#sphinxOreillyBook112005)  
   1. [Sphinxの用語と特徴](#sphinxOreillyBook110002)  
      1. [Sphinxの用語](#sphinxOreillyBook112006)  
      1. [Sphinxのよくある利用例](#sphinxOreillyBook112007)  
      1. [docutilsとreSTの設計思想](#sphinxOreillyBook112008)  
      1. [Sphinxの難しいところ](#sphinxOreillyBook112009)  
      1. [Sphinxの嬉しいところ](#sphinxOreillyBook112010)  
   1. [Sphinxと比較されるツール](#sphinxOreillyBook110003)  
      1. [SphinxとOffice suiteの違い](#sphinxOreillyBook112011)  
      1. [SphinxとWikiの違い](#sphinxOreillyBook112012)  
      1. [SphinxとMarkdown+Jekyllの違い](#sphinxOreillyBook112013)  
   1. [まとめ](#sphinxOreillyBook110004)  
1. 章 [Sphinxのインストール](#sphinxOreillyBook200001)  
   1. [Windows環境へのインストール](#sphinxOreillyBook210001)  
   1. [macOS環境へのインストール](#sphinxOreillyBook210002)  
      1. [Command Line Tools for Xcodeのインストール](#sphinxOreillyBook211001)  
      1. [Pythonのインストール](#sphinxOreillyBook211002)  
      1. [Sphinxのインストール](#sphinxOreillyBook211003)  
   1. [Linux環境へのインストール](#sphinxOreillyBook210003)  
   1. [まとめ](#sphinxOreillyBook210004)  
1. 章 [議事録を書いてみよう（HTMLへの変換）](#sphinxOreillyBook300001)  
   1. [Sphinxによるドキュメント作成の流れ](#sphinxOreillyBook310001)  
   1. [プロジェクトの作成](#sphinxOreillyBook310002)  
      1. [はじめてのビルド](#sphinxOreillyBook311001)  
   1. [議事録を書こう](#sphinxOreillyBook310003)  
      1. [会議名、議題―セクション](#sphinxOreillyBook311002)  
      1. [参加者と日時―リスト](#sphinxOreillyBook311003)  
      1. [会議の目的―段落、引用文](#sphinxOreillyBook311004)  
      1. [状況の報告―リストとサブリスト](#sphinxOreillyBook311005)  
      1. [決定事項―インライン記法](#sphinxOreillyBook311006)  
      1. [外部資料―ハイパーリンク](#sphinxOreillyBook311007)  
      1. [日程調整、まとめ―コメント](#sphinxOreillyBook311008)  
      1. [完成した議事録](#sphinxOreillyBook311009)  
   1. [HTMLテーマを使おう](#sphinxOreillyBook310004)  
      1. [ビルド設定ファイル（conf.py）の編集](#sphinxOreillyBook311010)  
      1. [その他のHTMLテーマ](#sphinxOreillyBook311011)  
      1. [HTMLテーマのカスタマイズ](#sphinxOreillyBook311012)  
   1. [まとめ](#sphinxOreillyBook310005)  
1. 章 [PDFに変換してみよう](#sphinxOreillyBook400001)  
   1. [インストール手順書を書いてみよう](#sphinxOreillyBook410001)  
      1. [TeXを使ったPDFへの変換](#sphinxOreillyBook411001)  
      1. [いつだってquickstartから](#sphinxOreillyBook411002)  
      1. [表を書いてみよう](#sphinxOreillyBook411003)  
      1. [実行コマンドを書いてみる](#sphinxOreillyBook411004)  
      1. [PDFに変換する](#sphinxOreillyBook411005)  
   1. [いくつかのパートに分けて文章を書く](#sphinxOreillyBook410002)  
      1. [原稿を複数のファイルに分割する](#sphinxOreillyBook411006)  
      1. [toctreeと文書構造](#sphinxOreillyBook411007)  
      1. [さらに大きい文書を書く場合](#sphinxOreillyBook411008)  
   1. [まとめ](#sphinxOreillyBook410003)  
1. 章 [EPUBに変換してみよう](#sphinxOreillyBook500001)  
   1. [画像を埋め込む](#sphinxOreillyBook510001)  
   1. [他のページを参照する](#sphinxOreillyBook510002)  
      1. [ラベルを付ける](#sphinxOreillyBook511001)  
      1. [参照を作る](#sphinxOreillyBook511002)  
   1. [EPUBに変換する](#sphinxOreillyBook510003)  
   1. [書籍の出力オプションを設定する](#sphinxOreillyBook510004)  
      1. [表紙を設定する](#sphinxOreillyBook511003)  
      1. [出版に使う情報を設定する](#sphinxOreillyBook511004)  
      1. [ちょっとしたヒント](#sphinxOreillyBook511005)  
   1. [まとめ](#sphinxOreillyBook510005)  
1. 章 [画像の変換と埋め込み](#sphinxOreillyBook600001)  
   1. [基本中の基本、figureディレクティブ](#sphinxOreillyBook610001)  
      1. [figureディレクティブのオプション](#sphinxOreillyBook611001)  
      1. [Sphinxで扱うことのできる画像形式](#sphinxOreillyBook611002)  
      1. [出力形式に合わせて適切な画像ファイルを切替える](#sphinxOreillyBook611003)  
   1. [Cacooを利用する](#sphinxOreillyBook610002)  
      1. [Cacooクイックツアー](#sphinxOreillyBook611004)  
      1. [Cacooで作成した図をSphinxから利用する](#sphinxOreillyBook611005)  
      1. [自動化する](#sphinxOreillyBook611006)  
      1. [Cacoo拡張のインストール・設定](#sphinxOreillyBook611007)  
      1. [Cacoo拡張を使って図を埋め込む](#sphinxOreillyBook611008)  
      1. [その他のツールへの対応](#sphinxOreillyBook611009)  
   1. [まとめ](#sphinxOreillyBook610003)  
1. [おわりに](#sphinxOreillyBook900002)  

1. 付録A [reStructuredTextリファレンス](#sphinxOreillyBook910001)  
   1. A[インライン記法](#sphinxOreillyBook911001)  
   1. A[インライン記法（ロール）](#sphinxOreillyBook911002)  
   1. A[段落](#sphinxOreillyBook911003)  
   1. A[コメント](#sphinxOreillyBook911004)  
   1. A[セクション名](#sphinxOreillyBook911005)  
   1. A[ページ内目次（contents）](#sphinxOreillyBook911006)  
   1. A[番号なしリスト](#sphinxOreillyBook911007)  
   1. A[番号付きリスト](#sphinxOreillyBook911008)  
   1. A[定義リスト](#sphinxOreillyBook911009)  
   1. A[画像（figure）](#sphinxOreillyBook911010)  
   1. A[図表番号による参照（numref）](#sphinxOreillyBook911011)  
   1. A[ハイパーリンク](#sphinxOreillyBook911012)  
   1. A[URL](#sphinxOreillyBook911013)  
   1. A[email](#sphinxOreillyBook911014)  
   1. A[外部ハイパーリンクターゲット](#sphinxOreillyBook911015)  
   1. A[名前付きハイパーリンク参照](#sphinxOreillyBook911016)  
   1. A[名前なしハイパーリンク](#sphinxOreillyBook911017)  
   1. A[埋め込みURL記法](#sphinxOreillyBook911018)  
   1. A[インライン内部ターゲット](#sphinxOreillyBook911019)  
   1. A[ラベル](#sphinxOreillyBook911020)  
   1. A[クロスリファレンス（ref）](#sphinxOreillyBook911021)  
   1. A[別原稿ファイルへのリンク（doc）](#sphinxOreillyBook911022)  
   1. A[ダウンロード用リンク（download）](#sphinxOreillyBook911023)  
   1. A[ラインブロック](#sphinxOreillyBook911024)  
   1. A[引用ブロック](#sphinxOreillyBook911025)  
   1. A[クォートリテラルブロック](#sphinxOreillyBook911026)  
   1. A[リテラルコードブロック（::）](#sphinxOreillyBook911027)  
   1. A[コードブロック（code-block）](#sphinxOreillyBook911028)  
   1. A[コードの引用（literalinclude）](#sphinxOreillyBook911029)  
   1. A[パースドリテラル（parsed-literal）](#sphinxOreillyBook911030)  
   1. A[テーブル（simple table）](#sphinxOreillyBook911031)  
   1. A[テーブル（grid table）](#sphinxOreillyBook911032)  
   1. A[CSVテーブル（csv-table）](#sphinxOreillyBook911033)  
   1. A[リストテーブル（list-table）](#sphinxOreillyBook911034)  
   1. A[フィールドリスト](#sphinxOreillyBook911035)  
   1. A[TOCツリー（toctree）](#sphinxOreillyBook911036)  
   1. A[脚注](#sphinxOreillyBook911037)  
   1. A[引用参照](#sphinxOreillyBook911038)  
   1. A[注釈（note、warning）](#sphinxOreillyBook911039)  
   1. A[数式（math）](#sphinxOreillyBook911040)  
   1. A[RFC、PEP](#sphinxOreillyBook911041)  
   1. A[オプションリスト](#sphinxOreillyBook911042)  
   1. A[置換](#sphinxOreillyBook911043)  
   1. A[用語集（glossary）](#sphinxOreillyBook911044)  
   1. A[用語参照（term）](#sphinxOreillyBook911045)  
   1. A[インクルード（include）](#sphinxOreillyBook911046)  
   1. A[raw](#sphinxOreillyBook911047)  
1. 付録B [Sphinxが使える出力形式](#sphinxOreillyBook910002)  
   1. B[本書で説明したビルダ](#sphinxOreillyBook921001)  
   1. B[HTML](#sphinxOreillyBook921002)  
   1. B[ヘルプブラウザ](#sphinxOreillyBook921003)  
   1. B[内部データ構造](#sphinxOreillyBook921004)  
   1. B[その他](#sphinxOreillyBook921005)  
1. 付録C [sphinx-quickstart の設問一覧](#sphinxOreillyBook910003)  
1. 付録D [TeX Live/MacTeXのインストール](#sphinxOreillyBook910004)  
   1. D[Windows環境へのTeX Live 2017のインストール](#sphinxOreillyBook941001)  
   1. D[macOS環境へのMacTeXのインストール](#sphinxOreillyBook934002)  
   1. D[Linux環境へのTeX Live 2017のインストール](#sphinxOreillyBook941003)  
1. 付録E [Windowsへの makeコマンドと shコマンドのインストール](#sphinxOreillyBook910005)  
   1. E[Make for Windows のインストール](#sphinxOreillyBook951001)  
   1. E[Git for Windowsのインストール](#sphinxOreillyBook951002)  
1. 付録F [Markdownで書いてみようA](#sphinxOreillyBook910006)  
   1. F[Markdownの歴史](#sphinxOreillyBook961001)  
   1. F[SphinxでMarkdown原稿を扱う](#sphinxOreillyBook961002)  
   1. F[Markdown原稿を書いてみよう](#sphinxOreillyBook961003)  
1. 付録G [Sphinxのコミュニティ（Sphinx-users.jp）](#sphinxOreillyBook910007)  
   1. G[情報交換の場の提供](#sphinxOreillyBook971001)  
   1. G[イベントの開催](#sphinxOreillyBook971002)  
   1. G[Sphinxに関する日本語情報の発信](#sphinxOreillyBook971003)  
1. [謝辞](#sphinxOreillyBook900003)
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
<a id="oreillySphinxBook9784873118192"></a>
## 書籍：1冊目

<a id="sphinxOreillyBook900002"></a>
### おわりに


<a id="sphinxOreillyBook600001"></a>
### 画像の変換と埋め込み

<a id="sphinxOreillyBook610001"></a>
#### 基本中の基本、figureディレクティブ

<a id="sphinxOreillyBook610002"></a>
#### Cacooを利用する

<a id="sphinxOreillyBook610003"></a>
#### まとめ


<a id="sphinxOreillyBook500001"></a>
### EPUBに変換してみよう

<a id="sphinxOreillyBook510001"></a>
#### 画像を埋め込む

<a id="sphinxOreillyBook510002"></a>
#### 他のページを参照する

<a id="sphinxOreillyBook510003"></a>
#### EPUBに変換する

<a id="sphinxOreillyBook510004"></a>
#### 書籍の出力オプションを設定する

<a id="sphinxOreillyBook510005"></a>
#### まとめ


<a id="sphinxOreillyBook400001"></a>
### PDFに変換してみよう

<a id="sphinxOreillyBook410001"></a>
#### インストール手順書を書いてみよう

<a id="sphinxOreillyBook410002"></a>
#### いくつかのパートに分けて文章を書く

<a id="sphinxOreillyBook410003"></a>
#### まとめ


<a id="sphinxOreillyBook300001"></a>
### 議事録を書いてみよう（HTMLへの変換）

<a id="sphinxOreillyBook310001"></a>
#### Sphinxによるドキュメント作成の流れ

<a id="sphinxOreillyBook310002"></a>
#### プロジェクトの作成

<a id="sphinxOreillyBook310003"></a>
#### 議事録を書こう

<a id="sphinxOreillyBook310004"></a>
#### HTMLテーマを使おう

<a id="sphinxOreillyBook310005"></a>
#### まとめ


<a id="sphinxOreillyBook200001"></a>
### Sphinxのインストール

<a id="sphinxOreillyBook210001"></a>
#### Windows環境へのインストール

<a id="sphinxOreillyBook210002"></a>
#### macOS環境へのインストール

以下、環境が無いことの確認。
```terminal
$ sphinx-quickstart --version
-bash: sphinx-quickstart: command not found
$
```


<a id="sphinxOreillyBook210003"></a>
#### Linux環境へのインストール

<a id="sphinxOreillyBook210004"></a>
#### まとめ

<a id="sphinxOreillyBook100001"></a>
### Sphinxとは

<a id="sphinxOreillyBook110001"></a>
#### Sphinxを何に使うのか

<a id="sphinxOreillyBook110002"></a>
#### Sphinxの用語と特徴

<a id="sphinxOreillyBook110003"></a>
#### Sphinxと比較されるツール

<a id="sphinxOreillyBook110004"></a>
#### まとめ

<a id="sphinxOreillyBook900001"></a>
### はじめに



<a id="sphinxOreillyBook910007"></a>
### 付録G-Sphinxのコミュニティ（Sphinx-users.jp）

<a id="sphinxOreillyBook971001"></a>
#### G-情報交換の場の提供

<a id="sphinxOreillyBook971002"></a>
#### G-イベントの開催

<a id="sphinxOreillyBook971003"></a>
#### G-Sphinxに関する日本語情報の発信


<a id="sphinxOreillyBook910006"></a>
### 付録F-Markdownで書いてみようA

<a id="sphinxOreillyBook961001"></a>
#### F-Markdownの歴史

<a id="sphinxOreillyBook961002"></a>
#### F-SphinxでMarkdown原稿を扱う

<a id="sphinxOreillyBook961003"></a>
#### F-Markdown原稿を書いてみよう


<a id="sphinxOreillyBook910005"></a>
### 付録E-Windowsへの makeコマンドと shコマンドのインストール

<a id="sphinxOreillyBook951001"></a>
#### E-Make for Windows のインストール

<a id="sphinxOreillyBook951002"></a>
#### E-Git for Windowsのインストール


<a id="sphinxOreillyBook910004"></a>
### 付録D-TeX Live/MacTeXのインストール

<a id="sphinxOreillyBook941001"></a>
#### D-Windows環境へのTeX Live 2017のインストール

<a id="sphinxOreillyBook934002"></a>
#### D-macOS環境へのMacTeXのインストール

<a id="sphinxOreillyBook941003"></a>
#### D-Linux環境へのTeX Live 2017のインストール


<a id="sphinxOreillyBook910003"></a>
### 付録C-sphinx-quickstart の設問一覧


<a id="sphinxOreillyBook910002"></a>
### 付録B-Sphinxが使える出力形式

<a id="sphinxOreillyBook921001"></a>
#### B-本書で説明したビルダ

<a id="sphinxOreillyBook921002"></a>
#### B-HTML

<a id="sphinxOreillyBook921003"></a>
#### B-ヘルプブラウザ

<a id="sphinxOreillyBook921004"></a>
#### B-内部データ構造

<a id="sphinxOreillyBook921005"></a>
#### B-その他


<a id="sphinxOreillyBook910001"></a>
### 付録A-reStructuredTextリファレンス

<a id="sphinxOreillyBook911001"></a>
#### A-インライン記法

<a id="sphinxOreillyBook911002"></a>
#### A-インライン記法（ロール）

<a id="sphinxOreillyBook911003"></a>
#### A-段落

<a id="sphinxOreillyBook911004"></a>
#### A-コメント

<a id="sphinxOreillyBook911005"></a>
#### A-セクション名

<a id="sphinxOreillyBook911006"></a>
#### A-ページ内目次（contents）

<a id="sphinxOreillyBook911007"></a>
#### A-番号なしリスト

<a id="sphinxOreillyBook911008"></a>
#### A-番号付きリスト

<a id="sphinxOreillyBook911009"></a>
#### A-定義リスト

<a id="sphinxOreillyBook911010"></a>
#### A-画像（figure）

<a id="sphinxOreillyBook911011"></a>
#### A-図表番号による参照（numref）

<a id="sphinxOreillyBook911012"></a>
#### A-ハイパーリンク

<a id="sphinxOreillyBook911013"></a>
#### A-URL

<a id="sphinxOreillyBook911014"></a>
#### A-email

<a id="sphinxOreillyBook911015"></a>
#### A-外部ハイパーリンクターゲット

<a id="sphinxOreillyBook911016"></a>
#### A-名前付きハイパーリンク参照

<a id="sphinxOreillyBook911017"></a>
#### A-名前なしハイパーリンク

<a id="sphinxOreillyBook911018"></a>
#### A-埋め込みURL記法

<a id="sphinxOreillyBook911019"></a>
#### A-インライン内部ターゲット

<a id="sphinxOreillyBook911020"></a>
#### A-ラベル

<a id="sphinxOreillyBook911021"></a>
#### A-クロスリファレンス（ref）

<a id="sphinxOreillyBook911022"></a>
#### A-別原稿ファイルへのリンク（doc）

<a id="sphinxOreillyBook911023"></a>
#### A-ダウンロード用リンク（download）

<a id="sphinxOreillyBook911024"></a>
#### A-ラインブロック

<a id="sphinxOreillyBook911025"></a>
#### A-引用ブロック

<a id="sphinxOreillyBook911026"></a>
#### A-クォートリテラルブロック

<a id="sphinxOreillyBook911027"></a>
#### A-リテラルコードブロック（::）

<a id="sphinxOreillyBook911028"></a>
#### A-コードブロック（code-block）

<a id="sphinxOreillyBook911029"></a>
#### A-コードの引用（literalinclude）

<a id="sphinxOreillyBook911030"></a>
#### A-パースドリテラル（parsed-literal）

<a id="sphinxOreillyBook911031"></a>
#### A-テーブル（simple table）

<a id="sphinxOreillyBook911032"></a>
#### A-テーブル（grid table）

<a id="sphinxOreillyBook911033"></a>
#### A-CSVテーブル（csv-table）

<a id="sphinxOreillyBook911034"></a>
#### A-リストテーブル（list-table）

<a id="sphinxOreillyBook911035"></a>
#### A-フィールドリスト

<a id="sphinxOreillyBook911036"></a>
#### A-TOCツリー（toctree）

<a id="sphinxOreillyBook911037"></a>
#### A-脚注

<a id="sphinxOreillyBook911038"></a>
#### A-引用参照

<a id="sphinxOreillyBook911039"></a>
#### A-注釈（note、warning）

<a id="sphinxOreillyBook911040"></a>
#### A-数式（math）

<a id="sphinxOreillyBook911041"></a>
#### A-RFC、PEP

<a id="sphinxOreillyBook911042"></a>
#### A-オプションリスト

<a id="sphinxOreillyBook911043"></a>
#### A-置換

<a id="sphinxOreillyBook911044"></a>
#### A-用語集（glossary）

<a id="sphinxOreillyBook911045"></a>
#### A-用語参照（term）

<a id="sphinxOreillyBook911046"></a>
#### A-インクルード（include）

<a id="sphinxOreillyBook911047"></a>
#### A-raw

<a id="memo1999"></a>
### 個人メモ


---
ーーー 最終行 ーーー
<!-- vim: set ts=4 sts=4 sw=4 tw=0 expandtab: -->
