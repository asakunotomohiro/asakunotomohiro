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
1. 章 [編集用パワーツール](#sedawkOreillyBook900001)  
   sedとawkの特徴や機能を紹介する。  
1. 章 [基本的な使い方](#sedawkOreillyBook900002)  
   sedとawkの基本動作を示す。  
   1. [ed発sed & grep経由awk行き](#sedawkOreillyBook920001)  
   1. [コマンドラインの構文](#sedawkOreillyBook920002)  
   1. [sedの使い方](#sedawkOreillyBook920003)  
   1. [awkの使い方](#sedawkOreillyBook920004)  
   1. [sedとawkの組み合わせ](#sedawkOreillyBook920005)  
1. 章 [正規表現](#sedawkOreillyBook900003)  
   正規表現との組み合わせをするためにも正規表現を詳しく説明する。  
   1. [正規表現は式だ](#sedawkOreillyBook930001)  
   1. [これが正規表現だ](#sedawkOreillyBook930002)  
   1. [私の好きな正規表現](#sedawkOreillyBook930003)  
1. 章 [sedスクリプトの書き方](#sedawkOreillyBook900004)  
   sedの基本事項を説明する。  
   1. [スクリプト中のコマンドの適用](#sedawkOreillyBook940001)  
   1. [アドレッシングに関するグローバルな考察](#sedawkOreillyBook940002)  
   1. [出力のテストと保存](#sedawkOreillyBook940003)  
   1. [4つのタイプのsedスクリプト](#sedawkOreillyBook940004)  
   1. [約束の地へ](#sedawkOreillyBook940005)  
1. 章 [sedの基本コマンド](#sedawkOreillyBook900005)  
   sedにより人手での簡単作業を代替する解説をする。  
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
   人手を超えた作業をプログラミングによる作業代替を解説する。  
   1. [複数行のパターンスペース](#sedawkOreillyBook960001)  
   1. [ケーススタディ](#sedawkOreillyBook960002)  
   1. [行の保管](#sedawkOreillyBook960003)  
   1. [高度なフロー制御コマンド](#sedawkOreillyBook960004)  
   1. [フレーズの結合](#sedawkOreillyBook960005)  
1. 章 [awkスクリプトの書き方](#sedawkOreillyBook900007)  
   awkの特色を説明する。  
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
   一般的な構造化プログラミング解説をする。  
   1. [条件文](#sedawkOreillyBook980001)  
   1. [ループ](#sedawkOreillyBook980002)  
   1. [フロー制御用のその他の文](#sedawkOreillyBook980003)  
   1. [配列](#sedawkOreillyBook980004)  
   1. [略語プロセッサ](#sedawkOreillyBook980005)  
   1. [配列になったシステム変数](#sedawkOreillyBook980006)  
1. 章 [関数](#sedawkOreillyBook900009)  
   awkの組み込み関数及びユーザ作成関数の解説をする。  
   1. [算術関数](#sedawkOreillyBook990001)  
   1. [文字列関数](#sedawkOreillyBook990002)  
   1. [ユーザ定義関数の記述](#sedawkOreillyBook990003)  
1. 章 [一番下の引き出し](#sedawkOreillyBook900010)  
   awkによる他コマンド・ファイル・パイプとの連携やデバッグなどの方法を解説する。  
   1. [getline関数](#sedawkOreillyBook901001)  
   1. [close()関数](#sedawkOreillyBook901002)  
   1. [system()関数](#sedawkOreillyBook901003)  
   1. [メニューベースのコマンドジェネレータ](#sedawkOreillyBook901004)  
   1. [ファイルやパイプへの出力](#sedawkOreillyBook901005)  
   1. [帳票の生成](#sedawkOreillyBook901006)  
   1. [デバッグ](#sedawkOreillyBook901007)  
   1. [制限事項](#sedawkOreillyBook901008)  
   1. [#!構文によるawkの起動](#sedawkOreillyBook901009)  
1. 章 [いろいろなawk](#sedawkOreillyBook900011)  
   awkの歴史を踏まえた使い方などを解説する。  
   1. [オリジナルawk](#sedawkOreillyBook911001)  
   1. [無料で入手可能なawk](#sedawkOreillyBook911002)  
   1. [製品版のawk](#sedawkOreillyBook911003)  
   1. [エピローグ](#sedawkOreillyBook911004)  
1. 章 [実用アプリケーションの開発](#sedawkOreillyBook900012)  
   複雑なawkプログラムを行う。  
   1. [対話的スペルチェッカ](#sedawkOreillyBook912001)  
   1. [索引の生成](#sedawkOreillyBook912002)  
   1. [masterindexで使った技](#sedawkOreillyBook912003)  
1. 章 [スクリプト集](#sedawkOreillyBook900013)  
   sedやawkの技巧をお披露目する。  
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
このファイルへの大前提への記入目標。  
軽い利用を想定しているため、ワンライナー程度の勉強に収まれば、勉強完了とする。  
そのため、1冊まるごと勉強するつもりはない。  
何せ、Perlをある程度勉強しているのだから今更Perlよりも簡単に利用できるツールを使う理由はない・・・ない？  


---
<a id="oreillySedAwkBook9784900900585"></a>
## 書籍：1冊目


<a name="sedawkOreillyBook900013"></a>
### スクリプト集
概要：sedやawkの技巧をお披露目する。  


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
概要：複雑なawkプログラムを行う。  


<a name="sedawkOreillyBook912001"></a>
#### 対話的スペルチェッカ

<a name="sedawkOreillyBook912002"></a>
#### 索引の生成

<a name="sedawkOreillyBook912003"></a>
#### masterindexで使った技

<a name="sedawkOreillyBook900011"></a>
### いろいろなawk
概要：歴代awkを解説する。  
5章分解説のうちの5章目。  


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
概要：awkによる他コマンド・ファイル・パイプとの連携方法やデバッグ方法などを解説する。  
5章分解説のうちの4章目。  


<a name="sedawkOreillyBook901001"></a>
#### getline関数

<a name="sedawkOreillyBook901002"></a>
#### close()関数

<a name="sedawkOreillyBook901003"></a>
#### system()関数

<a name="sedawkOreillyBook901004"></a>
#### メニューベースのコマンドジェネレータ

<a name="sedawkOreillyBook901005"></a>
#### ファイルやパイプへの出力

<a name="sedawkOreillyBook901006"></a>
#### 帳票の生成

<a name="sedawkOreillyBook901007"></a>
#### デバッグ

<a name="sedawkOreillyBook901008"></a>
#### 制限事項

<a name="sedawkOreillyBook901009"></a>
#### #!構文によるawkの起動

<a name="sedawkOreillyBook900009"></a>
### 関数
概要：awkの組み込み関数及びユーザ作成関数の解説をする。  
5章分解説のうちの3章目。  


<a name="sedawkOreillyBook990001"></a>
#### 算術関数

<a name="sedawkOreillyBook990002"></a>
#### 文字列関数

<a name="sedawkOreillyBook990003"></a>
#### ユーザ定義関数の記述

<a name="sedawkOreillyBook900008"></a>
### 条件、ループ、配列
概要：一般的なプログラミング解説をする。  
5章分解説のうちの2章目。  


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
概要：awkの特色を説明する(プログラミング言語)。  
5章分解説のうちの1章目。  


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
概要：人手を超えた作業によるプログラミングでの作業解説をする。  
3章分の3つ目の解説。  


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
概要：人手による簡単作業をsedで実現するための解説をする。  
3章分の2つ目の解説。  


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
概要：sedを使うための基本事項を説明する。  
3章に渡ってsedを説明するための駆け出し部分。  


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
概要：Unixの正規表現の構文を解説する。  


<a name="sedawkOreillyBook930001"></a>
#### 正規表現は式だ

<a name="sedawkOreillyBook930002"></a>
#### これが正規表現だ

<a name="sedawkOreillyBook930003"></a>
#### 私の好きな正規表現

<a name="sedawkOreillyBook900002"></a>
### 基本的な使い方
概要：sedとawkの基本動作を示し、sedからawk機能面での進歩を確かめる。  
また、ユーザからの指示を受け取れるようにもする。  

* sedとawkの共通点  
  * 似たような構文で起動する。  
  * ストリーム指向であり、入力を1行づつ読み、結果を標準出力に書き出す。  
  * パターンマッチングに正規表現を使う。  
  * ユーザが命令をスクリプトで指定する。  

共通事項があるのは、両方との源流が**ed**にあるからだ。  


<a name="sedawkOreillyBook920001"></a>
#### ed発sed & grep経由awk行き
awkの系譜を遡ることで、sedとgrepにたどり着く。  
この2つは、Unixのラインエディタedに行き着く。  

以下、edコマンド作業。
```terminal
$ ll
total 8
drwxr-xr-x  7 asakunotomohiro  staff  224  1 21 15:21 ドキュメント作成技法/
-rw-r--r--  1 asakunotomohiro  staff   49  1 14 22:28 README.md
$ cat README.md	←☆ファイル内容表示。
# asakunotomohiro
俺が俺にオンデマンド
$ ed README.md	←☆edエディタでファイルを開く。
49	←☆文字数を表示し、最終行に移動する。
p	←☆現在行の表示。
俺が俺にオンデマンド
1	←☆1行目に移動。
# asakunotomohiro
d	←☆現在行を削除(今回で言えば、1行目を削除した・・・つもり・・・)。
p	←☆本来の1行目が削除されているため、これが出てくる。
俺が俺にオンデマンド
1	←☆1行目が変わっているのが分かる。
俺が俺にオンデマンド
q	←☆どういうこと？
?
q
$ cat README.md	←☆どういうこと？
# asakunotomohiro
俺が俺にオンデマンド
$
```

以下、edコマンド作業継続(正規表現)。
```terminal
$ ll
total 8
drwxr-xr-x  7 asakunotomohiro  staff  224  1 21 15:21 ドキュメント作成技法/
-rw-r--r--  1 asakunotomohiro  staff   49  1 14 22:28 README.md
$ date
2022年 1月21日 金曜日 15時31分49秒 JST
$ cat README.md
# asakunotomohiro
俺が俺にオンデマンド
$ ed README.md
49
/asakuno/d	←☆正規表現として、検索後に削除している。
p
俺が俺にオンデマンド
1	←☆消えているのが分かる。
俺が俺にオンデマンド
q
?
q
$ cat README.md	←☆どういうこと？
# asakunotomohiro
俺が俺にオンデマンド
$
```
上記`/asakuno/d`の**asakuno**は、正規表現で検索する部分になる。  
後半の**d**は、実行部分(?)になる。  
そのため、検索に掛かった行がまるごと削除されることになる。  
※検索に掛かった単語だけが削除されるのではない。  
先頭に**g**を付け、`g/asakuno/d`とした場合、ファイル内にある全ての行を検索し、削除実行することになる。  

置換の場合は、`[アドレス]s/正規表現/置換後の文字列/フラグ`にて、文字列が置き換わる。  
この辺りの挙動は、viと同じ。  
むしろ、viがedから派生したエディタだと言うのが分かっていれば、言わずもがな挙動になる。  

以下、置換作業。
```terminal
$ cat -n README.md
     1	# 本日は晴天なり。
     2	俺が俺にオンデマンド
     3	本日は雨天なり。
     4	本日は曇天なり。
     5	本日は晴天なり。
     6	本日は
     7	晴天なり。
     8	
     9	以上。
$ ed README.md
170
p
以上。	←☆最終行にいる。
/本日は/s//来年は/	←☆置換実施。
p	←☆1行目にいるのだろう。
# 来年は晴天なり。
1	←☆1行目の結果は、予想通り。
# 来年は晴天なり。
2
俺が俺にオンデマンド
3	←☆置換されていないが、予想通り。
本日は雨天なり。
4	←☆置換されていないが、予想通り。
本日は曇天なり。
5	←☆置換されていないが、予想通り。
本日は晴天なり。
6	←☆置換されていないが、予想通り。
本日は
7
晴天なり。
8

q
?
q
$
```
当初は、中途半端な移動をしたため、意図していない挙動をしたと思ってしまったが、やり直すことで、予想通りとなった。  
（計画は大事だ）  

ただ、`正規表現/s/正規表現/置換後の文字列/g`と言うやり方がある。  
viにあったか？  
この意味として、最初の正規表現は、置換作業対象を探す場所の特定に使う正規表現のこと(ファイル内にある場所を探すことになる。最初に見つけた行が対象になる)。  
2番目の正規表現は、実際に置換する文字列を探す正規表現になる(フラグとしてgが無ければ、1回の置換で処理が終了する)。  
`g/正規表現/s/正規表現/置換後の文字列/g`
の場合は、最初の**g**は、ファイル内にある行すべてを対象にするという意味。  
あとは、上記の説明通り。  

当然、上記の最初の正規表現と2番目の正規表現を変えることも可能。  
`g/abc/s/DEF/ghi/g`  
の場合、ファイル内から**abc**を含む全ての行を対象に置換する。  
置換前の文字列は、**DEF**になり、置換後の文字列は**ghi**になる。  

当然、上記の最初の正規表現と2番目の正規表現が同じ場合は、2番目の正規表現を省略可能。  
`g/abc/s//ghi/g`  
の場合、ファイル内から**abc**を含む全ての行を対象に置換する。  
置換前の文字列は、**abc**になり、置換後の文字列は**ghi**になる。  

```terminal
$ cat -n README.md
     1	# 本日は晴天なり。
     2	俺が俺にオンデマンド
     3	本日は雨天なり。
     4	本日は曇天なり。
     5	本日は晴天なり。
     6	本日は
     7	晴天なり。
     8	
     9	以上。
$ ed README.md
170
p
以上。
g/本日は/s//来年は/	←☆グローバル対応での置換実施。
p
来年は
3	←☆意図した結果。
来年は雨天なり。
4	←☆意図した結果。
来年は曇天なり。
5	←☆意図した結果。
来年は晴天なり。
6	←☆意図した結果。
来年は
7
晴天なり。
8

9
以上。
q
?
q
$
```
ちと、難しいな。  

また、これらのedの挙動を踏まえた上で、sedの挙動を確認する。  
基本的に、sedは、(しつこいようだが)ストリーム指向であり、指定が無い場合は、入力データをそのまま出力する。  
そのため、入力データを1行ごとに指定された箇所があるかを確認すると言うことであり、言い換えるならば、入力データ全てを対象にするのがデフォルトになっているとも言える。  
ゆえに、ed上の`s/正規表現/置換後の文字列/`をsedで実行した場合、`g/正規表現/s//置換後の文字列/`として処理されることになる。  
逆に言えば、edで対応させたい行がある場合は、その行を指定する必要がある。  
そして、sedの場合は、対応させたい行がある場合は(全ての行が対象のため)行を指定しないが、対象にしたくない行がある場合、その対象外の行を指定する必要があると言うこと。  

todo:
sedの挙動も確認すること。  


<a name="sedawkOreillyBook920002"></a>
#### コマンドラインの構文
起動方法のコマンドライン：
`コマンド オプション スクリプト ファイル`  

sedとawkに共通したコマンド利用になる。  

* 任意  
  基本的に、標準入力から入力を受け取り、標準出力先に出力する。  
  出力先をファイルに指定できるが、入力ファイルと同じにはできない。  
  * オプション  
    sedとawkで異なる。  
    唯一一致してるのが、**-f**になる(スクリプトファイル名の指定用オプション)。  
  * ファイル  

* 注意事項  
  * オプション  
  * スクリプト  
    空白やシェル用特殊文字が含まれる場合、スクリプトをシングルクォートで囲む必要がある。  
  * ファイル  
    **-f**オプションを使う場合のsed起動：
    `sed -f スクリプトファイル 入力用ファイル`  

* スクリプトについて  
  * パターン(正規表現)  
    1行の入力値からパターンに沿った値を抜き出す。  
    なければ、次の行を読みに行く。  
  * 手続き(命令・行動)  
    上記のパターンに沿った値がある場合、命令が実行されていく。  
    また、すべての命令が実行されることに注意すること。  
    その後のsedの挙動は、命令実行後は、出力後に次の行に移る。  
    awkの場合の命令実行後は、命令によって決まる(命令がない限り**勝手**に出力されない)。  
    ※sedとawkでかなり異なる。  
    sedは、ラインエディタのように、編集コマンドとして1文字の命令がある。  
    awkは、プログラム文や関数から構成され、括弧で囲む必要がある。  


<a name="sedawkOreillyBook920003"></a>
#### sedの使い方

* 2種類の使い方。  
  * [コマンドラインからの利用。](#sedawkOreillyBook920003sedusecommandline)  
  * [命令をファイルに書き出しておき、後からそれを動かす。](#sedawkOreillyBook920003sedusescriptfile)  

* オプション  
  * 種類  
    `-e`：直後に編集命令を続ける。  
    `-f`：直後にスクリプトファイル名を続ける。  
    `-n`：入力行の自動出力を抑止する。  

基本的に書き出し処理を指示しなければ、標準出力に出して終わる。  
それは、どうすることもできない。  
そのため、ファイルに書き出すなどの処理が必要になる。  

以下、ファイル出力プログラム。
```terminal
$ cat targetFile.md	←☆元の内容。
# 本日は晴天なり。
俺が俺にオンデマンド
本日は雨天なり。
本日は曇天なり。
本日は晴天なり。
本日は
晴天なり。

以上。
$ sed -f sedscriptfile targetFile.md > output	←☆ファイル書き出しを含むスクリプトファイル実行。
$ cat output	←☆出力結果内容。
# 来年は晴天だ。
俺が俺にオンデマンド
来年は雨天だ。
来年は曇天だ。
来年は晴天だ。
来年は
晴天だ。

以上。
$
```

また、入力ファイルに書き出した場合、ファイル内容が無くなるため気をつけること。  
以下、その証明。
```terminal
$ cat targetFile.md
# 本日は晴天なり。
俺が俺にオンデマンド
本日は雨天なり。
本日は曇天なり。
本日は晴天なり。
本日は
晴天なり。

以上。
$ sed -f sedscriptfile targetFile.md > targetFile.md	←☆入力ファイルと出力ファイルを同じにして実行。
$ cat targetFile.md	←☆ファイル内容が無くなっている。
$
```

入力ファイルをターミナルに出す必要がない場合、**-n**オプションを付けることで抑止できる。  
以下、実行例）
```terminal
$ sed 's/本日は/来年は/' targetFile.md	←☆通常利用(ファイルへの書き出しはターミナル上に出てこない)。
# 来年は晴天なり。
俺が俺にオンデマンド
来年は雨天なり。
来年は曇天なり。
来年は晴天なり。
来年は
晴天なり。

以上。
$ sed -n 's/本日は/来年は/' targetFile.md	←☆-nオプションで抑止できる。
$ sed -n 's/本日は/来年は/p' targetFile.md	←☆置換(命令)部分を出す場合は、フラグ部分にpを付ける。
# 来年は晴天なり。
来年は雨天なり。
来年は曇天なり。
来年は晴天なり。
来年は
$
```

これだけでも奥が深い。  


<a name="sedawkOreillyBook920003sedusecommandline"></a>
##### コマンドラインからのsed利用
様式：
`sed -e '命令' ファイル`  
※`-e`は、複数命令が必要な場合に必要だが、普段から付けて構わない。  

例）
`sed -e 's/本日は/来年は/' README.md`  
置換コマンド`s`を用いて、**本日は**を**来年は**に置き換えるワンライナーになる。  

以下、使用例）
```terminal
$ ll
total 8
-rw-r--r--  1 asakunotomohiro  staff  170  1 21 16:07 README.md
drwxr-xr-x  7 asakunotomohiro  staff  224  1 21 15:21 ドキュメント作成技法/
$ cat README.md	←☆本来のファイル内容。
# 本日は晴天なり。
俺が俺にオンデマンド
本日は雨天なり。
本日は曇天なり。
本日は晴天なり。
本日は
晴天なり。

以上。
$ sed 's/本日は/来年は/' README.md	←☆実際に使う。
# 来年は晴天なり。
俺が俺にオンデマンド
来年は雨天なり。
来年は曇天なり。
来年は晴天なり。
来年は
晴天なり。

以上。
$
```
冒頭で`-e`を付けて構わない発言を撤回した使い方をしているという・・・。  

<a name="sedawkOreillyBook920003sedusecommandlinesemicolon"></a>
以下、複数の命令実行例）
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
$ sed 's/本日は/来年は/; s/なり。/だ。/' README.md	←☆セミコロン区切り。
# 来年は晴天だ。
俺が俺にオンデマンド
来年は雨天だ。
来年は曇天だ。
来年は晴天だ。
来年は
晴天だ。

以上。
$
```
セミコロン`;`記号で区切る。  
様式：
`sed 's/置換前の文字列/置換後の文字列/; s/置換前の文字列/置換後の文字列/' ファイル`  

<a name="sedawkOreillyBook920003sedusecommandlineoptione"></a>
以下、複数の命令実行例）
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
$ sed 's/本日は/来年は/' -e 's/なり。/だ。/' README.md	←☆失敗(最初の命令に-eを付け忘れている)。
sed: -e: No such file or directory
sed: s/なり。/だ。/: No such file or directory
# 来年は晴天なり。
俺が俺にオンデマンド
来年は雨天なり。
来年は曇天なり。
来年は晴天なり。
来年は
晴天なり。

以上。
$ sed -e 's/本日は/来年は/' -e 's/なり。/だ。/' README.md	←☆-e区切り。
# 来年は晴天だ。
俺が俺にオンデマンド
来年は雨天だ。
来年は曇天だ。
来年は晴天だ。
来年は
晴天だ。

以上。
$
```
どちらが良いかはそのとき次第？  

<a name="sedawkOreillyBook920003sedusecommandlinefailure"></a>
以下、ワンライナー失敗例）
```terminal
$ sed 's/本日は/来年は' README.md
sed: 1: "s/本日は/来年は": unterminated substitute in regular expression
$
```
置換命令の最後に、スラッシュ記号を付け忘れているのが原因。  


<a name="sedawkOreillyBook920003sedusescriptfile"></a>
##### スクリプトファイルからのsed利用
様式：
`sed -f スクリプトファイル 対象ファイル`  

以下、実際にスクリプトファイルを作成し、それを動かす。
```terminal
$ ll
total 16
-rw-r--r--  1 asakunotomohiro  staff   23  1 21 23:30 sedscriptfile	←☆スクリプトファイル。
-rw-r--r--@ 1 asakunotomohiro  staff  170  1 21 16:07 TargetFile.md	←☆対象ファイル。
$ cat TargetFile.md	←☆対象ファイル内容。
# 本日は晴天なり。
俺が俺にオンデマンド
本日は雨天なり。
本日は曇天なり。
本日は晴天なり。
本日は
晴天なり。

以上。
$ cat sedscriptfile	←☆スクリプトファイル内容。
s/本日は/来年は/
$ sed -f sedscriptfile TargetFile.md
# 来年は晴天なり。
俺が俺にオンデマンド
来年は雨天なり。
来年は曇天なり。
来年は晴天なり。
来年は
晴天なり。

以上。
$
```
ワンライナーと同じ結果になった。  

以下、スクリプトファイルに複数命令を書き出しておいて実行する。
```terminal
$ cat TargetFile.md
# 本日は晴天なり。
俺が俺にオンデマンド
本日は雨天なり。
本日は曇天なり。
本日は晴天なり。
本日は
晴天なり。

以上。
$ cat sedscriptfile	←☆スクリプトファイル内容。
s/本日は/来年は/
s/なり。/だ。/
$ sed -f sedscriptfile TargetFile.md	←☆実行。
# 来年は晴天だ。
俺が俺にオンデマンド
来年は雨天だ。
来年は曇天だ。
来年は晴天だ。
来年は
晴天だ。

以上。
$
```
これもワンライナーと同じ結果になった。  


<a name="sedawkOreillyBook920004"></a>
#### awkの使い方
入力の1行1行に対して命令を実行する。  

* 2種類の使い方。  
  * [コマンドラインからの利用。](#sedawkOreillyBook920004awkusecommandline)  
  * [命令をファイルに書き出しておき、後からそれを動かす。](#sedawkOreillyBook920004awkusescriptfile)  


<a name="sedawkOreillyBook920004awkusecommandline"></a>
##### コマンドラインからのawk利用
様式：
`awk '命令' ファイル`  
※ファイルは、1つでも複数でも可能。  
もしくは、標準入力からも可能。  

また、複数の命令を与える場合は、sedの時のようにするのだが、[セミコロン区切り](#sedawkOreillyBook920003sedusecommandlinesemicolon)のみ可能だ。  
sedを含むどこにも説明をしていないのだが、マルチ入力機能を使うことでも複数命令が可能。  

<a name="sedawkOreillyBook920004awkusecommandlinespace"></a>
以下、半角スペース区切りの1つ目を出力する実行例）
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
$ awk '{print $1}' targetFile.md
#
俺が俺にオンデマンド
本日は
本日は
本日は
本日は
晴天なり。

以上。
$
```

<a name="sedawkOreillyBook920004awkusecommandlineregoneline"></a>
以下、正規表現にかかった行のみを出力する実行例）
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
$ awk '/なり/' targetFile.md
# 本日は晴天なり。
本日は 雨天, なり。
本日は 曇天, なり。
本日は 晴天, なり。
晴天なり。
$
```

<a name="sedawkOreillyBook920004awkusecommandlineregonelinespace"></a>
以下、正規表現に掛かった行の半角スペース区切り1つ目の箇所を出力する実行例）
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
$ awk '/なり/ {print $1}' targetFile.md
#
本日は
本日は
本日は
晴天なり。
$
```

<a name="sedawkOreillyBook920004awkusecommandlineregonelinecomma"></a>
以下、正規表現に掛かった行のカンマ区切り1つ目の箇所を出力する実行例）
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
$ awk -F, '/なり/ {print $1}' targetFile.md
# 本日は晴天なり。
本日は 雨天
本日は 曇天
本日は 晴天
晴天なり。
$
```


<a name="sedawkOreillyBook920004awkusescriptfile"></a>
##### スクリプトファイルからのawk利用
様式：
`awk -f スクリプトファイル 対象ファイル`  




以下、スクリプトファイル利用実行失敗例）
```terminal
$ ll
total 16
-rw-r--r--@ 1 asakunotomohiro  staff    8  1 22 00:55 awkscriptfile
-rw-r--r--  1 asakunotomohiro  staff  179  1 22 00:41 targetFile.md
$ cat awkscriptfile	←☆{}がない。
print $1$ cat targetFile.md
# 本日は晴天なり。
俺が俺にオンデマンド
本日は 雨天, なり。
本日は 曇天, なり。
本日は 晴天, なり。
本日は
晴天なり。

以上。
$ awk -f awkscriptfile targetFile.md	←☆エラー。
awk: syntax error at source line 1 source file awkscriptfile
 context is
	 >>> print <<<  $1
awk: bailing out at source line 1
$
```


<a name="sedawkOreillyBook920005"></a>
#### sedとawkの組み合わせ

<a name="sedawkOreillyBook900001"></a>
### 編集用パワーツール
概要：sedとawkの特徴や機能を紹介する。  

* 小さい目次。  
  1. [面白き課題を解けよ柿の種](#sedawkOreillyBook910001)  
  1. [ストリームエディタ](#sedawkOreillyBook910002)  
  1. [パターンマッチングプログラミング言語](#sedawkOreillyBook910003)  
  1. [sedとawkの4つのハードル](#sedawkOreillyBook910004)  


<a name="sedawkOreillyBook910001"></a>
#### 面白き課題を解けよ柿の種
ファイル内容の変更をする場合、以下の3種類の方法がある。  
※置換前後の文字列は都度変化のある置換作業とする。  

1. テキストエディタで変更箇所を探し出し、ひとつひとつ手作業で変更する。  
1. **sed**で編集する。  
   手作業と同等だが、処理は速い。  
1. **awk**を用いて、以下のプログラムを組む。  
   1. 対象ファイルから変更箇所と置き換える文字列の一覧を作成する。  
   1. 変更箇所を特定する。  
   1. 置き換える。  

上記1.は、くだらない手法だ。  
上記2.は、sed利用に利点はあるが、そもそもの置き換え一覧を手作業で作る必要が出てくる。  
上記3.は、作成したプログラムがあれば、今後も応用ができる。  


<a name="sedawkOreillyBook910002"></a>
#### ストリームエディタ
**sed**は、「**非対話的な**」ストリーム思考エディタである。  
sedの処理が入力から出力まで妨げなく流れることで、ストリーム指向という。  
逆に、viやDosアプリなどはストリーム指向とは言わない。  

sedの検索置換機能は、個数に関係なく、指定ファイル全てを対象とする。  

* sedの使う対象。  
  * ひとつまたは複数のファイル編集を自動化したいとき。  
  * 複数ファイルに対する同一の編集作業を簡単に済ませたいとき。  
  * 変換プログラムを書くとき。  

変換プログラムって何？  


<a name="sedawkOreillyBook910003"></a>
#### パターンマッチングプログラミング言語

* awkの特徴
  * テキストファイルをレコードとフィールドで構成されるテキストデータベースと見なせる。  
  * 変数を使ってデータベースを操作できる。  
  * 算術演算子と文字列演算子が使える。  
  * ループや条件文などの一般的なプログラミング構文が使える。  
  * 定型レポートを生成できる。  
  * 関数を定義できる。  
  * スクリプトからUnixコマンドを実行できる。  
  * Unixコマンドの結果を処理できる。  
  * コマンドライン引数を比較的美しく処理できる。  
  * 複数の入力ストリームを比較的簡単に処理できる。  

多岐に渡った作業ができるのはよく分かった。  
しかし、簡単にできると言うよりは、簡単にこなせる処理をやらせているからではないだろうか。  
複雑なことができないだけでは？  
違うのか？  
awkでLispインタプリタを書いたり、コンパイラまで作れるほどだから、複雑で奇っ怪なこともawkにはできるのだろう。  


<a name="sedawkOreillyBook910004"></a>
#### sedとawkの4つのハードル
簡単な処理をさせるために本書があるわけではなく、使いこなせるために存在するとのこと。  
だからこそ、分厚い本になったのだろう。  

* 4つのハードル  
  1. **sed**と**awk**の使い方。  
     [2章](#sedawkOreillyBook900002)だけで完結する。  
  1. Unixの[正規表現](#sedawkOreillyBook900003)構文の応用。  
  1. シェルと対話する方法。  
     シェルと併用する場合は、sedやawkの特殊文字と重複する特殊文字があり、エスケープする必要が発生する。  
     Bourne互換シェル
  1. スクリプトを書くコツ。  

※**Bourneシェル(`/bin/sh`)**とは、Bashとは違う？  
違うようだな。  
Bourneシェルが初代だとすれば、派生されたシェルのひとつにBashがあり、それらは、ある程度規格化されているようだ。  
詳しくは知らないが、Bourneシェルは、サポート対象外のように、すでに遺物扱いになっている。  


<a name="sedawkOreillyBook900000"></a>
### はじめに
**sed**は、複数のファイルを変更するのに適したツール(**Stream EDitor**に由来する)。  
**awk言語**は、開発者の頭文字をとった名前であり、このツールを使うことにより、構造的なデータの取扱いや定型レポート作成が簡単にできるようになる。  

これらは、**grep**との組み合わせを行うことで、力強い味方になってくれるそうだ。  
そのため、事あるごとにgrepの解説もするとのこと。  

版権(?)問題により、最新版の名前が配布先によりまちまちになっている。  
そのため、最新版を使う場合は、必ず確認が必要になる。  
名前が違うのか、バージョンで分けているのか、配布会社により対応する必要がある。  


---
ーーー 最終行 ーーー
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
