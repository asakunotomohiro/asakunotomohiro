# sed・awk作成作業で得た知見全てをここに記録する。

[個人メモ(総合的な優先度の高いメモ)](#memo99999)  

---
## 参考URL
参考ページ：
[IBM-sedコマンド](https://www.ibm.com/docs/ja/aix/7.2?topic=s-sed-command)  
[SunOS-sedコマンド](https://docs.oracle.com/cd/E19253-01/819-1210/sed-1/index.html)  
[Linux-sedコマンド](https://linuxjm.osdn.jp/html/GNU_sed/man1/sed.1.html)  
[Effective AWK Programming](http://www.kt.rim.or.jp/%7Ekbk/gawk-30/gawk_toc.html)  

[ＡＷＫのまとめ](https://www.osaka-kyoiku.ac.jp/~kokugo/nonami/awk/awkmini.html)  
[IBM-awkコマンド](https://www.ibm.com/docs/ja/aix/7.1?topic=awk-command)  
[ORACLE-awkコマンド](https://docs.oracle.com/cd/E56342_01/html/E54074/awk-1.html)  



---
## 参考書籍(1冊目)。
書籍：[sed & awkプログラミング 改訂版](#oreillySedAwkBook9784900900585contents)  
ISBN：978-4900900585  
ASIN：なし。  
著者：Dale Dougherty  
著者：Arnold Robbins  
訳者：福崎 俊博  
発行：1997年10月 発行  
出版社：オライリージャパン  
関連先URL：<https://www.oreilly.co.jp/books/4900900583/>  
形式：紙  


<!-- 目次部分(リンクになるところ) -->
<a id="oreillySedAwkBook9784900900585contents"></a>
## [目次](#oreillySedAwkBook9784900900585)
1. [はじめに](#sedawkOreillyBook900000)  
   本書の内容
   プログラムの入手方法
   ソースコードの入手
   本書の表記法
   第2版について
   第1版の謝辞
   ご意見、ご質問の宛て先
1. 章 [編集用パワーツール](#sedawkOreillyBook900001)  
   1. [面白き課題を解けよ柿の種](#sedawkOreillyBook910001)  
   1. [ストリームエディタ](#sedawkOreillyBook910002)  
   1. [パターンマッチングプログラミング言語](#sedawkOreillyBook910003)  
   1. [sedとawkの4つのハードル](#sedawkOreillyBook910004)  
1. 章 [基本的な使い方](#sedawkOreillyBook900002)  
   1. [ed発sed & grep経由awk行き](#sedawkOreillyBook920001)  
   1. [コマンドラインの構文](#sedawkOreillyBook920002)  
   1. [sedの使い方](#sedawkOreillyBook920003)  
   1. [awkの使い方](#sedawkOreillyBook920004)  
   1. [sedとawkの組み合わせ](#sedawkOreillyBook920005)  
1. 章 [正規表現](#sedawkOreillyBook900003)  
   1. [正規表現は式だ](#sedawkOreillyBook930001)  
   1. [これが正規表現だ](#sedawkOreillyBook930002)  
   1. [私の好きな正規表現](#sedawkOreillyBook930003)  
1. 章 [sedスクリプトの書き方](#sedawkOreillyBook900004)  
   1. [スクリプト中のコマンドの適用](#sedawkOreillyBook940001)  
   1. [アドレッシングに関するグローバルな考察](#sedawkOreillyBook940002)  
   1. [出力のテストと保存](#sedawkOreillyBook940003)  
   1. [4つのタイプのsedスクリプト](#sedawkOreillyBook940004)  
   1. [約束の地へ](#sedawkOreillyBook940005)  
1. 章 [sedの基本コマンド](#sedawkOreillyBook900005)  
   1. [sedコマンドの構文](#sedawkOreillyBook950001)  
   1. [コメント](#sedawkOreillyBook950002)  
   1. [置換](#sedawkOreillyBook950003)  
   1. [削除](#sedawkOreillyBook950004)  
   1. [追加、挿入、変更](#sedawkOreillyBook950005)  
   1. [リスト](#sedawkOreillyBook950006)  
   1. [変換](#sedawkOreillyBook950007)  
   1. [表示](#sedawkOreillyBook950008)  
   1. [行番号の表示](#sedawkOreillyBook950009)  
   1. [次行読み込み](#sedawkOreillyBook950010)  
   1. [ファイルの読み込みと書き出し](#sedawkOreillyBook950011)  
   1. [終了](#sedawkOreillyBook950012)  
1. 章 [sedの高度なコマンド](#sedawkOreillyBook900006)  
   1. [複数行のパターンスペース](#sedawkOreillyBook960001)  
   1. [ケーススタディ](#sedawkOreillyBook960002)  
   1. [行の保管](#sedawkOreillyBook960003)  
   1. [高度なフロー制御コマンド](#sedawkOreillyBook960004)  
   1. [フレーズの結合](#sedawkOreillyBook960005)  
1. 章 [awkスクリプトの書き方](#sedawkOreillyBook900007)  
   1. [ゲームの遊び方](#sedawkOreillyBook970001)  
   1. [Hello World](#sedawkOreillyBook970002)  
   1. [awkのプログラミングモデル](#sedawkOreillyBook970003)  
   1. [パターンマッチング](#sedawkOreillyBook970004)  
   1. [レコードとフィールド](#sedawkOreillyBook970005)  
   1. [式](#sedawkOreillyBook970006)  
   1. [システム変数](#sedawkOreillyBook970007)  
   1. [関係演算子と論理演算子](#sedawkOreillyBook970008)  
   1. [フォーマット出力](#sedawkOreillyBook970009)  
   1. [スクリプトへのパラメータの渡し方](#sedawkOreillyBook970010)  
   1. [情報の抽出](#sedawkOreillyBook970011)  
1. 章 [条件、ループ、配列](#sedawkOreillyBook900008)  
   1. [条件文](#sedawkOreillyBook980001)  
   1. [ループ](#sedawkOreillyBook980002)  
   1. [フロー制御用のその他の文](#sedawkOreillyBook980003)  
   1. [配列](#sedawkOreillyBook980004)  
   1. [略語プロセッサ](#sedawkOreillyBook980005)  
   1. [配列になったシステム変数](#sedawkOreillyBook980006)  
1. 章 [関数](#sedawkOreillyBook900009)  
   1. [算術関数](#sedawkOreillyBook990001)  
   1. [文字列関数](#sedawkOreillyBook990002)  
   1. [ユーザ定義関数の記述](#sedawkOreillyBook990003)  
1. 章 [一番下の引き出し](#sedawkOreillyBook900010)  
   1. [getline関数](#sedawkOreillyBook900001)  
   1. [close()関数](#sedawkOreillyBook900002)  
   1. [system()関数](#sedawkOreillyBook900003)  
   1. [メニューベースのコマンドジェネレータ](#sedawkOreillyBook900004)  
   1. [ファイルやパイプへの出力](#sedawkOreillyBook900005)  
   1. [帳票の生成](#sedawkOreillyBook900006)  
   1. [デバッグ](#sedawkOreillyBook900007)  
   1. [制限事項](#sedawkOreillyBook900008)  
   1. [#!構文によるawkの起動](#sedawkOreillyBook900009)  
1. 章 [いろいろなawk](#sedawkOreillyBook900011)  
   1. [オリジナルawk](#sedawkOreillyBook911001)  
   1. [無料で入手可能なawk](#sedawkOreillyBook911002)  
   1. [製品版のawk](#sedawkOreillyBook911003)  
   1. [エピローグ](#sedawkOreillyBook911004)  
1. 章 [実用アプリケーションの開発](#sedawkOreillyBook900012)  
   1. [対話的スペルチェッカ](#sedawkOreillyBook912001)  
   1. [索引の生成](#sedawkOreillyBook912002)  
   1. [masterindexで使った技](#sedawkOreillyBook912003)  
1. 章 [スクリプト集](#sedawkOreillyBook900013)  
   1. [uutot.awk −UUCPの統計の報告](#sedawkOreillyBook913001)  
   1. [phonebill −電話の利用状況の報告](#sedawkOreillyBook913002)  
   1. [combine −分割されたuuencodeバイナリの抽出](#sedawkOreillyBook913003)  
   1. [mailavg −メールボックスのサイズのチェック](#sedawkOreillyBook913004)  
   1. [adj −テキストファイルの行の整形](#sedawkOreillyBook913005)  
   1. [readsource −プログラムソースファイルのtroff用フォーマッティング](#sedawkOreillyBook913006)  
   1. [gent −termcapエントリの取得](#sedawkOreillyBook913007)  
   1. [plpr −lprプリプロセッサ](#sedawkOreillyBook913008)  
   1. [transpose −行列の転置](#sedawkOreillyBook913009)  
   1. [m1 −非常にシンプルなマクロプロセッサ](#sedawkOreillyBook913010)  

1. 付録A　sedクイックリファレンス
   1. A コマンドラインの構文
   1. A sedコマンドの構文
   1. A sedのコマンド

1. 付録B　awkクイックリファレンス
   1. B コマンドラインの?分
   1. B awk言語の概要
   1. B awkのコマンド

1. 付録C　12章の補足
   1. C spellcheck.awkの全リスト
   1. C masterindexシェルスクリプトのリスト
   1. C masterindexのマニュアル

1. 索引

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
<a id="oreillySedAwkBook9784900900585"></a>
## 書籍：1冊目


<a name="sedawkOreillyBook900013"></a>
### スクリプト集

<a name="sedawkOreillyBook913001"></a>
#### uutot.awk −UUCPの統計の報告

<a name="sedawkOreillyBook913002"></a>
#### phonebill −電話の利用状況の報告

<a name="sedawkOreillyBook913003"></a>
#### combine −分割されたuuencodeバイナリの抽出

<a name="sedawkOreillyBook913004"></a>
#### mailavg −メールボックスのサイズのチェック

<a name="sedawkOreillyBook913005"></a>
#### adj −テキストファイルの行の整形

<a name="sedawkOreillyBook913006"></a>
#### readsource −プログラムソースファイルのtroff用フォーマッティング

<a name="sedawkOreillyBook913007"></a>
#### gent −termcapエントリの取得

<a name="sedawkOreillyBook913008"></a>
#### plpr −lprプリプロセッサ

<a name="sedawkOreillyBook913009"></a>
#### transpose −行列の転置

<a name="sedawkOreillyBook913010"></a>
#### m1 −非常にシンプルなマクロプロセッサ

<a name="sedawkOreillyBook900012"></a>
### 実用アプリケーションの開発

<a name="sedawkOreillyBook912001"></a>
#### 対話的スペルチェッカ

<a name="sedawkOreillyBook912002"></a>
#### 索引の生成

<a name="sedawkOreillyBook912003"></a>
#### masterindexで使った技

<a name="sedawkOreillyBook900011"></a>
### いろいろなawk

<a name="sedawkOreillyBook911001"></a>
#### オリジナルawk

<a name="sedawkOreillyBook911002"></a>
#### 無料で入手可能なawk

<a name="sedawkOreillyBook911003"></a>
#### 製品版のawk

<a name="sedawkOreillyBook911004"></a>
#### エピローグ

<a name="sedawkOreillyBook900010"></a>
### 一番下の引き出し

<a name="sedawkOreillyBook900001"></a>
#### getline関数

<a name="sedawkOreillyBook900002"></a>
#### close()関数

<a name="sedawkOreillyBook900003"></a>
#### system()関数

<a name="sedawkOreillyBook900004"></a>
#### メニューベースのコマンドジェネレータ

<a name="sedawkOreillyBook900005"></a>
#### ファイルやパイプへの出力

<a name="sedawkOreillyBook900006"></a>
#### 帳票の生成

<a name="sedawkOreillyBook900007"></a>
#### デバッグ

<a name="sedawkOreillyBook900008"></a>
#### 制限事項

<a name="sedawkOreillyBook900009"></a>
#### #!構文によるawkの起動

<a name="sedawkOreillyBook900009"></a>
### 関数

<a name="sedawkOreillyBook990001"></a>
#### 算術関数

<a name="sedawkOreillyBook990002"></a>
#### 文字列関数

<a name="sedawkOreillyBook990003"></a>
#### ユーザ定義関数の記述

<a name="sedawkOreillyBook900008"></a>
### 条件、ループ、配列

<a name="sedawkOreillyBook980001"></a>
#### 条件文

<a name="sedawkOreillyBook980002"></a>
#### ループ

<a name="sedawkOreillyBook980003"></a>
#### フロー制御用のその他の文

<a name="sedawkOreillyBook980004"></a>
#### 配列

<a name="sedawkOreillyBook980005"></a>
#### 略語プロセッサ

<a name="sedawkOreillyBook980006"></a>
#### 配列になったシステム変数

<a name="sedawkOreillyBook900007"></a>
### awkスクリプトの書き方

<a name="sedawkOreillyBook970001"></a>
#### ゲームの遊び方

<a name="sedawkOreillyBook970002"></a>
#### Hello World

<a name="sedawkOreillyBook970003"></a>
#### awkのプログラミングモデル

<a name="sedawkOreillyBook970004"></a>
#### パターンマッチング

<a name="sedawkOreillyBook970005"></a>
#### レコードとフィールド

<a name="sedawkOreillyBook970006"></a>
#### 式

<a name="sedawkOreillyBook970007"></a>
#### システム変数

<a name="sedawkOreillyBook970008"></a>
#### 関係演算子と論理演算子

<a name="sedawkOreillyBook970009"></a>
#### フォーマット出力

<a name="sedawkOreillyBook970010"></a>
#### スクリプトへのパラメータの渡し方

<a name="sedawkOreillyBook970011"></a>
#### 情報の抽出

<a name="sedawkOreillyBook900006"></a>
### sedの高度なコマンド

<a name="sedawkOreillyBook960001"></a>
#### 複数行のパターンスペース

<a name="sedawkOreillyBook960002"></a>
#### ケーススタディ

<a name="sedawkOreillyBook960003"></a>
#### 行の保管

<a name="sedawkOreillyBook960004"></a>
#### 高度なフロー制御コマンド

<a name="sedawkOreillyBook960005"></a>
#### フレーズの結合

<a name="sedawkOreillyBook900005"></a>
### sedの基本コマンド

<a name="sedawkOreillyBook950001"></a>
#### sedコマンドの構文

<a name="sedawkOreillyBook950002"></a>
#### コメント

<a name="sedawkOreillyBook950003"></a>
#### 置換

<a name="sedawkOreillyBook950004"></a>
#### 削除

<a name="sedawkOreillyBook950005"></a>
#### 追加、挿入、変更

<a name="sedawkOreillyBook950006"></a>
#### リスト

<a name="sedawkOreillyBook950007"></a>
#### 変換

<a name="sedawkOreillyBook950008"></a>
#### 表示

<a name="sedawkOreillyBook950009"></a>
#### 行番号の表示

<a name="sedawkOreillyBook950010"></a>
#### 次行読み込み

<a name="sedawkOreillyBook950011"></a>
#### ファイルの読み込みと書き出し

<a name="sedawkOreillyBook950012"></a>
#### 終了

<a name="sedawkOreillyBook900004"></a>
### sedスクリプトの書き方

<a name="sedawkOreillyBook940001"></a>
#### スクリプト中のコマンドの適用

<a name="sedawkOreillyBook940002"></a>
#### アドレッシングに関するグローバルな考察

<a name="sedawkOreillyBook940003"></a>
#### 出力のテストと保存

<a name="sedawkOreillyBook940004"></a>
#### 4つのタイプのsedスクリプト

<a name="sedawkOreillyBook940005"></a>
#### 約束の地へ

<a name="sedawkOreillyBook900003"></a>
### 正規表現

<a name="sedawkOreillyBook930001"></a>
#### 正規表現は式だ

<a name="sedawkOreillyBook930002"></a>
#### これが正規表現だ

<a name="sedawkOreillyBook930003"></a>
#### 私の好きな正規表現

<a name="sedawkOreillyBook900002"></a>
### 基本的な使い方

<a name="sedawkOreillyBook920001"></a>
#### ed発sed & grep経由awk行き

<a name="sedawkOreillyBook920002"></a>
#### コマンドラインの構文

<a name="sedawkOreillyBook920003"></a>
#### sedの使い方

<a name="sedawkOreillyBook920004"></a>
#### awkの使い方

<a name="sedawkOreillyBook920005"></a>
#### sedとawkの組み合わせ

<a name="sedawkOreillyBook900001"></a>
### 編集用パワーツール

<a name="sedawkOreillyBook910001"></a>
#### 面白き課題を解けよ柿の種

<a name="sedawkOreillyBook910002"></a>
#### ストリームエディタ

<a name="sedawkOreillyBook910003"></a>
#### パターンマッチングプログラミング言語

<a name="sedawkOreillyBook910004"></a>
#### sedとawkの4つのハードル


---
ーーー 最終行 ーーー
<!-- vim:set ts=4 sts=4 sw=4 tw=0: -->
