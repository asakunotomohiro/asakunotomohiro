# Vimエディタ利用作業で得た知見全てをここに記録する。

[個人メモ(総合的な優先度の高いメモ)](#memo99999)  

---
## 参考URL
[Vim slack](https://vim-jp.org/slacklog/)  


---
## 参考書籍(1冊目)。
書籍：[実践Vim　思考のスピードで編集しよう！ (アスキー書籍)](#kadokawaVimSpeedUpEdit9784048916592contents)  
ISBN：978-4048916592  
ASIN：B00HWLJI3U  
著者：Drew Neil  
訳者：新丈径  
発行：~~2014/1/28~~　2013/8/29 発売日  
出版社：~~角川アスキー総合研究所~~　アスキー・メディアワークス  
関連先URL：<https://www.kadokawa.co.jp/product/311865500000/>  
形式：単行本(ソフトカバー)  

書籍内容：
> 古くて新しいUnixのエディタVim--このVimのエディタとしてのコア機能をマスターするためのレシピ集。  

---
## 参考書籍(2冊目)。
書籍：[ViIMproved‐Vim完全バイブル](#viimprovedBible9784774120188contents)  
ISBN：978-4774120188  
ASIN：なし。  
著者：Steve Oualline  
訳者：高橋　則利  
発行：2004/5/1 発売日  
出版社：技術評論社  
関連先URL：<https://gihyo.jp/book/2004/4-7741-2018-9>  
形式：単行本  

---
<!-- 目次部分(リンクになるところ) -->
<a id="viimprovedBible9784774120188contents"></a>
### [目次-ViIMproved‐Vim完全バイブル](#viimprovedBible9784774120188)
1. 部 [チュートリアル](#viBibleImprovedGihyo000001)  
   1. 章 [編集の基本](#viBibleImprovedGihyo100001)  
      1. [準備](#viBibleImprovedGihyo110001)  
      1. [モード](#viBibleImprovedGihyo110002)  
      1. [Vimの終了](#viBibleImprovedGihyo110003)  
      1. [基本操作](#viBibleImprovedGihyo110004)  
   1. 章 [高度な編集](#viBibleImprovedGihyo100002)  
      1. [移動](#viBibleImprovedGihyo120001)  
      1. [テキストに対する操作](#viBibleImprovedGihyo120002)  
   1. 章 [検索](#viBibleImprovedGihyo100003)  
      1. [前方検索](#viBibleImprovedGihyo130001)  
      1. [後方検索](#viBibleImprovedGihyo130002)  
      1. [特殊記号の使い方](#viBibleImprovedGihyo130003)  
   1. 章 [大きなサイズのテキストの編集および複数ファイルの編集](#viBibleImprovedGihyo100004)  
      1. [編集](#viBibleImprovedGihyo140001)  
      1. [マーク](#viBibleImprovedGihyo140002)  
      1. [ヤンク](#viBibleImprovedGihyo140003)  
      1. [複数ファイルの扱い](#viBibleImprovedGihyo140004)  
   1. 章 [複数ウィンドウの扱い](#viBibleImprovedGihyo100005)  
      1. [ウィンドウ分割](#viBibleImprovedGihyo150001)  
      1. [バッファ](#viBibleImprovedGihyo150002)  
   1. 章 [基本的なビジュアルモード](#viBibleImprovedGihyo100006)  
      1. [ビジュアルモード](#viBibleImprovedGihyo160001)  
      1. [ビジュアルモードでの編集作業](#viBibleImprovedGihyo160002)  
      1. [ビジュアルブロックモードでの編集作業](#viBibleImprovedGihyo160003)  
   1. 章 [プログラマ向けコマンド](#viBibleImprovedGihyo100007)  
      1. [カラーシンタックス](#viBibleImprovedGihyo170001)  
      1. [インデント](#viBibleImprovedGihyo170002)  
      1. [カーソルを利用した検索](#viBibleImprovedGihyo170003)  
      1. [ブロックに対するインデント](#viBibleImprovedGihyo170004)  
      1. [便利な検索](#viBibleImprovedGihyo170005)  
      1. [ソート](#viBibleImprovedGihyo170006)  
      1. [デバック](#viBibleImprovedGihyo170007)  
   1. 章 [基本的な略語，キーボード割り当て，初期設定ファイル](#viBibleImprovedGihyo100008)  
      1. [略語](#viBibleImprovedGihyo180001)  
      1. [キーマッピング](#viBibleImprovedGihyo180002)  
      1. [環境設定](#viBibleImprovedGihyo180003)  
   1. 章 [基本的なコマンドモードの操作](#viBibleImprovedGihyo100009)  
      1. [コマンドライン出力](#viBibleImprovedGihyo190001)  
      1. [置換え](#viBibleImprovedGihyo190002)  
      1. [ファイルの読み込みと保存](#viBibleImprovedGihyo190003)  
      1. [シェルの利用](#viBibleImprovedGihyo190004)  
   1. 章 [GUIの基本的な使い方](#viBibleImprovedGihyo100010)  
      1. [Gvimの使い方](#viBibleImprovedGihyo1100001)  
   1. 章 [テキストファイルの扱い方](#viBibleImprovedGihyo100011)  
      1. [改行](#viBibleImprovedGihyo1110001)  
      1. [テキストのフォーマット](#viBibleImprovedGihyo1110002)  
      1. [フォーマット方式の調整](#viBibleImprovedGihyo1110003)  
      1. [セクション](#viBibleImprovedGihyo1110004)  
      1. [暗号化](#viBibleImprovedGihyo1110005)  
   1. 章 [自動完了](#viBibleImprovedGihyo100012)  
      1. [自動入力](#viBibleImprovedGihyo1120001)  
      1. [スクリーンの移動](#viBibleImprovedGihyo1120002)  
   1. 章 [オートコマンド](#viBibleImprovedGihyo100013)  
      1. [基本的なオートコマンド](#viBibleImprovedGihyo1130001)  
      1. [グループ化](#viBibleImprovedGihyo1130002)  
      1. [イベント](#viBibleImprovedGihyo1130003)  
   1. 章 [ファイル回復とコマンドライン引数](#viBibleImprovedGihyo100014)  
      1. [コマンドライン](#viBibleImprovedGihyo1140001)  
      1. [暗号化](#viBibleImprovedGihyo1140002)  
      1. [バッチ処理](#viBibleImprovedGihyo1140003)  
      1. [その他のコマンドラインから機能](#viBibleImprovedGihyo1140004)  
      1. [バックアップ](#viBibleImprovedGihyo1140005)  
   1. 章 [その他のコマンド](#viBibleImprovedGihyo100015)  
      1. [文字](#viBibleImprovedGihyo1150001)  
      1. [スクリーン](#viBibleImprovedGihyo1150002)  
      1. [さまざまな機能](#viBibleImprovedGihyo1150003)  
   1. 章 [操作方法](#viBibleImprovedGihyo100016)  
      1. [入れ替え](#viBibleImprovedGihyo1160001)  
      1. [コピー](#viBibleImprovedGihyo1160002)  
      1. [ソート](#viBibleImprovedGihyo1160003)  
      1. [言語のための機能](#viBibleImprovedGihyo1160004)  
      1. [その他さまざまな機能](#viBibleImprovedGihyo1160005)  
   1. 章 [本書で分類されていないトピックス](#viBibleImprovedGihyo100017)  
      1. [インターフェース](#viBibleImprovedGihyo1170001)  
      1. [外国語](#viBibleImprovedGihyo1170002)  
      1. [その他の編集機能](#viBibleImprovedGihyo1170003)  
1. 部 [詳細](#viBibleImprovedGihyo000002)  
   1. 章 [基本的な編集作業（完結編）](#viBibleImprovedGihyo100018)  
      1. [単語の移動](#viBibleImprovedGihyo2180001)  
      1. [行移動](#viBibleImprovedGihyo2180002)  
      1. [行頭行末の移動](#viBibleImprovedGihyo2180003)  
      1. [位置確認](#viBibleImprovedGihyo2180004)  
      1. [スクロール](#viBibleImprovedGihyo2180005)  
      1. [削除](#viBibleImprovedGihyo2180006)  
      1. [挿入](#viBibleImprovedGihyo2180007)  
      1. [演算](#viBibleImprovedGihyo2180008)  
      1. [結合](#viBibleImprovedGihyo2180009)  
      1. [置換え](#viBibleImprovedGihyo2180010)  
      1. [文字の変更](#viBibleImprovedGihyo2180011)  
      1. [取り消し](#viBibleImprovedGihyo2180012)  
      1. [編集の終了](#viBibleImprovedGihyo2180013)  
   1. 章 [正規表現を使った高度な検索](#viBibleImprovedGihyo100019)  
      1. [検索オプション](#viBibleImprovedGihyo2190001)  
      1. [正規表現](#viBibleImprovedGihyo2190002)  
   1. 章 [さまざまなテキストブロックと複数ファイル](#viBibleImprovedGihyo100020)  
      1. [テキスト操作](#viBibleImprovedGihyo2200001)  
      1. [レジスタ操作](#viBibleImprovedGihyo2200002)  
      1. [複数のファイル操作](#viBibleImprovedGihyo2200003)  
      1. [カーソルの位置を指定して編集を開始する](#viBibleImprovedGihyo2200004)  
      1. [テキストの挿入](#viBibleImprovedGihyo2200005)  
      1. [情報の保存](#viBibleImprovedGihyo2200006)  
      1. [テキストの行に対する設定](#viBibleImprovedGihyo2200007)  
   1. 章 [ウィンドウとセッション：完全解説](#viBibleImprovedGihyo100021)  
      1. [移動](#viBibleImprovedGihyo2210001)  
      1. [ウィンドウ操作](#viBibleImprovedGihyo2210002)  
      1. [さまざまなバッファ](#viBibleImprovedGihyo2210003)  
      1. [セッション](#viBibleImprovedGihyo2210004)  
   1. 章 [ビジュアルモード：上級編](#viBibleImprovedGihyo100022)  
      1. [ビジュアルモードでの操作](#viBibleImprovedGihyo2220001)  
   1. 章 [プログラミングに便利な機能](#viBibleImprovedGihyo100023)  
      1. [インデント](#viBibleImprovedGihyo2230001)  
      1. [コメント](#viBibleImprovedGihyo2230002)  
      1. [インデントのカスタマイズ](#viBibleImprovedGihyo2230003)  
      1. [ファイルの比較](#viBibleImprovedGihyo2230004)  
      1. [メソッド・関数への移動](#viBibleImprovedGihyo2230005)  
      1. [プログラミングにおける複数のファイルの扱い](#viBibleImprovedGihyo2230006)  
      1. [プログラミングにおける検索方法のカスタマイズ](#viBibleImprovedGihyo2230007)  
      1. [ハイライト機能のカスタマイズ](#viBibleImprovedGihyo2230008)  
   1. 章 [短縮形とキーボードマッピングに関する全て](#viBibleImprovedGihyo100024)  
      1. [省略形](#viBibleImprovedGihyo2240001)  
      1. [マッピング](#viBibleImprovedGihyo2240002)  
   1. 章 [コマンドモード(:)のコマンド全集](#viBibleImprovedGihyo100025)  
      1. [コマンドの編集](#viBibleImprovedGihyo2250001)  
      1. [プログラム用のコマンド](#viBibleImprovedGihyo2250002)  
      1. [簡単な編集](#viBibleImprovedGihyo2250003)  
      1. [その他のコマンド](#viBibleImprovedGihyo2250004)  
   1. 章 [GUIコマンド：上級編](#viBibleImprovedGihyo100026)  
      1. [ウィンドウ操作](#viBibleImprovedGihyo2260001)  
      1. [マウスのカスタマイズ](#viBibleImprovedGihyo2260002)  
      1. [特殊なGUIコマンド](#viBibleImprovedGihyo2260003)  
   1. 章 [式と関数](#viBibleImprovedGihyo100027)  
      1. [変数](#viBibleImprovedGihyo2270001)  
      1. [定数](#viBibleImprovedGihyo2270002)  
      1. [演算](#viBibleImprovedGihyo2270003)  
      1. [コマンド](#viBibleImprovedGihyo2270004)  
      1. [制御ステートメント](#viBibleImprovedGihyo2270005)  
      1. [組み込み関数](#viBibleImprovedGihyo2270006)  
   1. 章 [エディタのカスタマイズ](#viBibleImprovedGihyo100028)  
      1. [設定コマンド](#viBibleImprovedGihyo2280001)  
      1. [キーボードの用法をカスタマイズする](#viBibleImprovedGihyo2280002)  
      1. [表示のためのカスタマイズ](#viBibleImprovedGihyo2280003)  
      1. [テキスト操作のためのカスタマイズ](#viBibleImprovedGihyo2280004)  
      1. [その他の設定](#viBibleImprovedGihyo2280005)  
      1. [ターミナルオプション](#viBibleImprovedGihyo2280006)  
      1. [あまり使われないオプション](#viBibleImprovedGihyo2280007)  
   1. 章 [プログラム言語別シンタックスオプション](#viBibleImprovedGihyo100029)  
      1. [各言語のシンタックスオプションの設定方法](#viBibleImprovedGihyo2290001)  
   1. 章 [シンタックスファイルの記述方法](#viBibleImprovedGihyo100030)  
      1. [シンタックスの定義](#viBibleImprovedGihyo2300001)  
      1. [シンタックスファイル](#viBibleImprovedGihyo2300002)  
1. [個人メモ](#memo2999)  

---
<!-- 目次部分(リンクになるところ) -->
<!-- 目次：http://asciimw.jp/search/mode/item/cd/311865500010 -->
<a id="kadokawaVimSpeedUpEdit9784048916592contents"></a>
## [目次-実践Vim　思考のスピードで編集しよう！](#kadokawaVimSpeedUpEdit9784048916592)
1. 章 [Vimのやり方](#vimPracticeThinkingSpeedUpKadokawa000001)  
   1. TIP：[ドットコマンドとは](#vimPracticeThinkingSpeedUpKadokawa010001)  
   1. TIP：[DRY（Don't Repeat Yourself）](#vimPracticeThinkingSpeedUpKadokawa010002)  
   1. TIP：[一歩下がって、三歩進む](#vimPracticeThinkingSpeedUpKadokawa010003)  
   1. TIP：[実行して、繰り返して、元に戻す](#vimPracticeThinkingSpeedUpKadokawa010004)  
   1. TIP：[手作業での検索と置換](#vimPracticeThinkingSpeedUpKadokawa010005)  
   1. TIP：[ドットの公式](#vimPracticeThinkingSpeedUpKadokawa010006)  
1. 部 [モード](#vimPracticeThinkingSpeedUpKadokawa100001)  
   1. 章 [ノーマルモード](#vimPracticeThinkingSpeedUpKadokawa000002)  
      7. TIP：[埃を払って一息つこう](#vimPracticeThinkingSpeedUpKadokawa120001)  
      8. TIP：[アンドゥはひとまとめに](#vimPracticeThinkingSpeedUpKadokawa120002)  
      9. TIP：[変更を繰り返し可能なものにする](#vimPracticeThinkingSpeedUpKadokawa120003)  
      10. TIP：[回数指定を使って簡単な計算を行う](#vimPracticeThinkingSpeedUpKadokawa120004)  
      11. TIP：[繰り返しで済むなら、回数を指定しない](#vimPracticeThinkingSpeedUpKadokawa120005)  
      12. TIP：[統合して統治せよ](#vimPracticeThinkingSpeedUpKadokawa120006)  
   1. 章 [挿入モード](#vimPracticeThinkingSpeedUpKadokawa000003)  
      13. TIP：[挿入モードで簡単修正](#vimPracticeThinkingSpeedUpKadokawa130001)  
      14. TIP：[ノーマルモードへの復帰](#vimPracticeThinkingSpeedUpKadokawa130002)  
      15. TIP：[挿入モードから抜けないでレジスタから貼り付け](#vimPracticeThinkingSpeedUpKadokawa130003)  
      16. TIP：[簡単な計算をその場で実行](#vimPracticeThinkingSpeedUpKadokawa130004)  
      17. TIP：[文字コードを使って特殊文字を入力](#vimPracticeThinkingSpeedUpKadokawa130005)  
      18. TIP：[ダイグラフによって特殊文字を挿入](#vimPracticeThinkingSpeedUpKadokawa130006)  
      19. TIP：[置換モードで既存のテキストを上書き](#vimPracticeThinkingSpeedUpKadokawa130007)  
   1. 章 [ビジュアルモード](#vimPracticeThinkingSpeedUpKadokawa000004)  
      20. TIP：[ビジュアルモードとは](#vimPracticeThinkingSpeedUpKadokawa140001)  
      21. TIP：[ビジュアルな選択範囲の定義](#vimPracticeThinkingSpeedUpKadokawa140002)  
      22. TIP：[行指向のビジュアルモードコマンドを繰り返す](#vimPracticeThinkingSpeedUpKadokawa140003)  
      23. TIP：[可能ならばビジュアルコマンドではなくオペレータを優先しよう](#vimPracticeThinkingSpeedUpKadokawa140004)  
      24. TIP：[ブロック指向のビジュアルモードで表形式のデータを編集](#vimPracticeThinkingSpeedUpKadokawa140005)  
      25. TIP：[テキスト列の変更](#vimPracticeThinkingSpeedUpKadokawa140006)  
      26. TIP：[矩形状ではないビジュアルな選択範囲にテキストを追加](#vimPracticeThinkingSpeedUpKadokawa140007)  
   1. 章 [コマンドラインモード](#vimPracticeThinkingSpeedUpKadokawa000005)  
      27. TIP：[Vimのコマンドラインモード](#vimPracticeThinkingSpeedUpKadokawa150001)  
      28. TIP：[連続する行に対してコマンドを実行する](#vimPracticeThinkingSpeedUpKadokawa150002)  
      29. TIP：[「:t」／「:m」コマンドで行をコピー／移動](#vimPracticeThinkingSpeedUpKadokawa150003)  
      30. TIP：[選択範囲に対してノーマルモードのコマンドを実行する](#vimPracticeThinkingSpeedUpKadokawa150004)  
      31. TIP：[直前のExコマンドを繰り返す](#vimPracticeThinkingSpeedUpKadokawa150005)  
      32. TIP：[Exコマンドでタブ補完](#vimPracticeThinkingSpeedUpKadokawa150006)  
      33. TIP：[カーソル位置にある単語をコマンドプロンプトに挿入](#vimPracticeThinkingSpeedUpKadokawa150007)  
      34. TIP：[履歴からコマンドを呼び戻す](#vimPracticeThinkingSpeedUpKadokawa150008)  
      35. TIP：[シェルでコマンドを実行](#vimPracticeThinkingSpeedUpKadokawa150009)  
1. 部 [ファイル](#vimPracticeThinkingSpeedUpKadokawa100002)  
   1. 章 [複数ファイルの管理](#vimPracticeThinkingSpeedUpKadokawa000006)  
      36. TIP：[バッファリストを使ってオープン中のファイルを管理する](#vimPracticeThinkingSpeedUpKadokawa260001)  
      37. TIP：[引数リストを使ってバッファをコレクションにまとめる](#vimPracticeThinkingSpeedUpKadokawa260002)  
      38. TIP：[隠しファイルの管理](#vimPracticeThinkingSpeedUpKadokawa260003)  
      39. TIP：[ワークスペースを分割ウィンドウにする](#vimPracticeThinkingSpeedUpKadokawa260004)  
      40. TIP：[タブページを使ってウィンドウのレイアウトを管理](#vimPracticeThinkingSpeedUpKadokawa260005)  
   1. 章 [ファイルのオープンとディスクへの保存](#vimPracticeThinkingSpeedUpKadokawa000007)  
      41. TIP：[「:edit」でファイルパスを指定してファイルをオープンする](#vimPracticeThinkingSpeedUpKadokawa270001)  
      42. TIP：[「:find」を使い名前を指定してファイルをオープンする](#vimPracticeThinkingSpeedUpKadokawa270002)  
      43. TIP：[netrwでファイルシステムを探索](#vimPracticeThinkingSpeedUpKadokawa270003)  
      44. TIP：[存在していないディレクトリにファイルを保存](#vimPracticeThinkingSpeedUpKadokawa270004)  
      45. TIP：[スーパーユーザーとしてファイルを保存](#vimPracticeThinkingSpeedUpKadokawa270005)  
1. 部 [スピードアップ！](#vimPracticeThinkingSpeedUpKadokawa100003)  
   1. 章 [モーションによるファイル内の移動](#vimPracticeThinkingSpeedUpKadokawa000008)  
      46. TIP：[自分の指はホームポジションから外さない](#vimPracticeThinkingSpeedUpKadokawa380001)  
      47. TIP：[論理行と表示行を区別しよう](#vimPracticeThinkingSpeedUpKadokawa380002)  
      48. TIP：[単語単位での移動](#vimPracticeThinkingSpeedUpKadokawa380003)  
      49. TIP：[文字を検索](#vimPracticeThinkingSpeedUpKadokawa380004)  
      50. TIP：[検索して移動](#vimPracticeThinkingSpeedUpKadokawa380005)  
      51. TIP：[高精度なテキストオブジェクトを使って選択範囲をトレース](#vimPracticeThinkingSpeedUpKadokawa380006)  
      52. TIP：[デリミタを含めて削除したり、デリミタの内側を変更したり](#vimPracticeThinkingSpeedUpKadokawa380007)  
      53. TIP：[場所をマークして、そこにサッと戻る](#vimPracticeThinkingSpeedUpKadokawa380008)  
      54. TIP：[カッコから対となるカッコにジャンプ](#vimPracticeThinkingSpeedUpKadokawa380009)  
   1. 章 [ジャンプによるファイル間の移動](#vimPracticeThinkingSpeedUpKadokawa000009)  
      55. TIP：[ジャンプリストの移動](#vimPracticeThinkingSpeedUpKadokawa390001)  
      56. TIP：[変更リストを辿る](#vimPracticeThinkingSpeedUpKadokawa390002)  
      57. TIP：[カーソル位置に記述されているファイル名のファイルにジャンプする](#vimPracticeThinkingSpeedUpKadokawa390003)  
      58. TIP：[グローバルマークを使ってファイル間をテキパキと移動する](#vimPracticeThinkingSpeedUpKadokawa390004)  
1. 部 [レジスタ](#vimPracticeThinkingSpeedUpKadokawa100004)  
   1. 章 [コピー＆ペースト](#vimPracticeThinkingSpeedUpKadokawa000010)  
      59. TIP：[無名レジスタを使った削除／ヤンク／プット](#vimPracticeThinkingSpeedUpKadokawa4100001)  
      60. TIP：[Vimのレジスタを掌握する](#vimPracticeThinkingSpeedUpKadokawa4100002)  
      61. TIP：[レジスタを使ってビジュアルな選択範囲を置換](#vimPracticeThinkingSpeedUpKadokawa4100003)  
      62. TIP：[レジスタから貼り付け](#vimPracticeThinkingSpeedUpKadokawa4100004)  
      63. TIP：[システムレベルのクリップボードを扱う](#vimPracticeThinkingSpeedUpKadokawa4100005)  
   1. 章 [マクロ](#vimPracticeThinkingSpeedUpKadokawa000011)  
      64. TIP：[マクロの記録と実行](#vimPracticeThinkingSpeedUpKadokawa4110001)  
      65. TIP：[正規化、撃破、中断](#vimPracticeThinkingSpeedUpKadokawa4110002)  
      66. TIP：[回数を指定してマクロを再生する](#vimPracticeThinkingSpeedUpKadokawa4110003)  
      67. TIP：[連続する行に対して変更を繰り返す](#vimPracticeThinkingSpeedUpKadokawa4110004)  
      68. TIP：[マクロにコマンドを追記する](#vimPracticeThinkingSpeedUpKadokawa4110005)  
      69. TIP：[複数のファイルにマクロを適用する](#vimPracticeThinkingSpeedUpKadokawa4110006)  
      70. TIP：[イテレータを評価してリスト中の要素に番号をつける](#vimPracticeThinkingSpeedUpKadokawa4110007)  
      71. TIP：[マクロの内容を編集する](#vimPracticeThinkingSpeedUpKadokawa4110008)  
1. 部 [パターン](#vimPracticeThinkingSpeedUpKadokawa100005)  
   1. 章 [パターンとリテラルのマッチ](#vimPracticeThinkingSpeedUpKadokawa000012)  
      72. TIP：[検索パターンが大文字／小文字を区別するかを制御する](#vimPracticeThinkingSpeedUpKadokawa5120001)  
      73. TIP：[正規表現検索で「v」パターンスイッチを使う](#vimPracticeThinkingSpeedUpKadokawa5120002)  
      74. TIP：[s{}Vリテラルスイッチを使ってテキストそのものを検索](#vimPracticeThinkingSpeedUpKadokawa5120003)  
      75. TIP：[カッコを使って部分マッチをキャプチャする](#vimPracticeThinkingSpeedUpKadokawa5120004)  
      76. TIP：[単語の境界を指定する](#vimPracticeThinkingSpeedUpKadokawa5120005)  
      77. TIP：[マッチ境界を指定する](#vimPracticeThinkingSpeedUpKadokawa5120006)  
      78. TIP：[問題字をエスケープ](#vimPracticeThinkingSpeedUpKadokawa5120007)  
   1. 章 [検索](#vimPracticeThinkingSpeedUpKadokawa000013)  
      79. TIP：[検索コマンドを使ってみよう](#vimPracticeThinkingSpeedUpKadokawa5130001)  
      80. TIP：[マッチを強調表示する](#vimPracticeThinkingSpeedUpKadokawa5130002)  
      81. TIP：[実行前に最初にマッチするものをプレビュー](#vimPracticeThinkingSpeedUpKadokawa5130003)  
      82. TIP：[現在のパターンにマッチするものの数を数える](#vimPracticeThinkingSpeedUpKadokawa5130004)  
      83. TIP：[検索のマッチの末尾にカーソルをオフセットする](#vimPracticeThinkingSpeedUpKadokawa5130005)  
      84. TIP：[マッチ全体に対して処理を行う](#vimPracticeThinkingSpeedUpKadokawa5130006)  
      85. TIP：[検索履歴を繰り返しながら複雑なパターンを作り上げる](#vimPracticeThinkingSpeedUpKadokawa5130007)  
      86. TIP：[現在のビジュアルな選択範囲の検索](#vimPracticeThinkingSpeedUpKadokawa5130008)  
   1. 章 [置換](#vimPracticeThinkingSpeedUpKadokawa000014)  
      87. TIP：[置換コマンド](#vimPracticeThinkingSpeedUpKadokawa5140001)  
      88. TIP：[ファイル中のすべてのマッチを検索／置換する](#vimPracticeThinkingSpeedUpKadokawa5140002)  
      89. TIP：[置換のたびに確認する](#vimPracticeThinkingSpeedUpKadokawa5140003)  
      90. TIP：[直前の検索パターンを流用する](#vimPracticeThinkingSpeedUpKadokawa5140004)  
      91. TIP：[レジスタの内容を使って置換を行う](#vimPracticeThinkingSpeedUpKadokawa5140005)  
      92. TIP：[直前の置換コマンドを繰り返す](#vimPracticeThinkingSpeedUpKadokawa5140006)  
      93. TIP：[部分マッチを使ってCSVのフィールドを入れ替える](#vimPracticeThinkingSpeedUpKadokawa5140007)  
      94. TIP：[置換時に算術演算を行う](#vimPracticeThinkingSpeedUpKadokawa5140008)  
      95. TIP：[2つ以上の単語を入れ替える](#vimPracticeThinkingSpeedUpKadokawa5140009)  
      96. TIP：[複数ファイル間で検索と置換を行う](#vimPracticeThinkingSpeedUpKadokawa5140010)  
   1. 章 [グローバルコマンド](#vimPracticeThinkingSpeedUpKadokawa000015)  
      97. TIP：[グローバルコマンドとは](#vimPracticeThinkingSpeedUpKadokawa5150001)  
      98. TIP：[パターンを含む行を削除する](#vimPracticeThinkingSpeedUpKadokawa5150002)  
      99. TIP：[レジスタにTODOアイテムを収集する](#vimPracticeThinkingSpeedUpKadokawa5150003)  
      100. TIP：[CSSファイル中のルールのプロパティをアルファベット順に並べ替える](#vimPracticeThinkingSpeedUpKadokawa5150004)  
1. 部 [ツール](#vimPracticeThinkingSpeedUpKadokawa100006)  
   1. 章 [ctagsを使ってソースコードのインデックスを作成し、ナビゲーションを行う](#vimPracticeThinkingSpeedUpKadokawa000016)  
      101. TIP：[ctagsとは](#vimPracticeThinkingSpeedUpKadokawa6160001)  
      102. TIP：[ctagsと連携するようにVimを構成する](#vimPracticeThinkingSpeedUpKadokawa6160002)  
      103. TIP：[Vimのタグナビゲーションコマンドを使ってキーワード定義に移動する](#vimPracticeThinkingSpeedUpKadokawa6160003)  
   1. 章 [quickfixリストを使って、コードのコンパイルとエラー発生箇所への移動を行う](#vimPracticeThinkingSpeedUpKadokawa000017)  
      104. TIP：[Vimを抜けずにコードをコンパイル](#vimPracticeThinkingSpeedUpKadokawa6170001)  
      105. TIP：[quickfixリストをブラウズする](#vimPracticeThinkingSpeedUpKadokawa6170002)  
      106. TIP：[以前のquickfixリストから結果を呼び戻す](#vimPracticeThinkingSpeedUpKadokawa6170003)  
      107. TIP：[外部コンパイラのカスタマイズ](#vimPracticeThinkingSpeedUpKadokawa6170004)  
   1. 章 [grep/vimgrepなどを使ってプロジェクト全体を検索する](#vimPracticeThinkingSpeedUpKadokawa000018)  
      108. TIP：[Vimを抜けずにgrepを呼び出す](#vimPracticeThinkingSpeedUpKadokawa6180001)  
      109. TIP：[grepプログラムのカスタマイズ](#vimPracticeThinkingSpeedUpKadokawa6180002)  
      110. TIP：[Vimの内部検索エンジンを使ってgrepする](#vimPracticeThinkingSpeedUpKadokawa6180003)  
   1. 章 [ダイヤルXを廻せ！　自動補完だ](#vimPracticeThinkingSpeedUpKadokawa000019)  
      111. TIP：[Vimのキーワード自動補完機能とは](#vimPracticeThinkingSpeedUpKadokawa6190001)  
      112. TIP：[自動補完のポップアップメニューを操作する](#vimPracticeThinkingSpeedUpKadokawa6190002)  
      113. TIP：[キーワードの定義元を把握する](#vimPracticeThinkingSpeedUpKadokawa6190003)  
      114. TIP：[辞書を使って単語を自動補完](#vimPracticeThinkingSpeedUpKadokawa6190004)  
      115. TIP：[行を丸ごと自動補完](#vimPracticeThinkingSpeedUpKadokawa6190005)  
      116. TIP：[ファイル名の自動補完](#vimPracticeThinkingSpeedUpKadokawa6190006)  
      117. TIP：[コンテキストにあわせて自動補完を行う](#vimPracticeThinkingSpeedUpKadokawa6190007)  
   1. 章 [Vimのスペルチェッカを使ってタイプミスを発見、修正する](#vimPracticeThinkingSpeedUpKadokawa000020)  
      118. TIP：[作業結果にスペルチェックをかけてみよう](#vimPracticeThinkingSpeedUpKadokawa6200001)  
      119. TIP：[別の辞書を使用する](#vimPracticeThinkingSpeedUpKadokawa6200002)  
      120. TIP：[スペルファイルに単語を追加する](#vimPracticeThinkingSpeedUpKadokawa6200003)  
      121. TIP：[スペルミスを挿入モードで修正する](#vimPracticeThinkingSpeedUpKadokawa6200004)  
   1. 章 [それからどうする](#vimPracticeThinkingSpeedUpKadokawa000021)  
1. 付録A [自分の好みに合わせてVimをカスタマイズする](#vimPracticeThinkingSpeedUpKadokawa990001)  
1. [個人メモ](#memo1999)  
---
## 参考書籍(3冊目)。
書籍：  
ISBN：  
ASIN：  
著者：  
訳者：  
発行：YYYY/MM/DD 発売日  
出版社：  
関連先URL：<URL>  
形式：単行本  

<!-- 目次部分(リンクになるところ) -->
### 目次
1. [個人メモ](#memo3999)  

---
<!-- リンク先(目次部分のリンクの飛び先) -->
## ーーー　上位、後ろの章になり、下側に若い章が来る。  

<a id="memo99999"></a>
## 個人メモ(総合的な優先度の高いメモ)



---
<a id="viimprovedBible9784774120188"></a>
## 書籍：ViIMproved‐Vim完全バイブル

<a id="viBibleImprovedGihyo000002"></a>
### 詳細

<a id="viBibleImprovedGihyo100030"></a>
#### シンタックスファイルの記述方法

<a id="viBibleImprovedGihyo2300001"></a>
##### シンタックスの定義

<a id="viBibleImprovedGihyo2300002"></a>
##### シンタックスファイル

<a id="viBibleImprovedGihyo100029"></a>
#### プログラム言語別シンタックスオプション

<a id="viBibleImprovedGihyo2290001"></a>
##### 各言語のシンタックスオプションの設定方法

<a id="viBibleImprovedGihyo100028"></a>
#### エディタのカスタマイズ

<a id="viBibleImprovedGihyo2280001"></a>
##### 設定コマンド

<a id="viBibleImprovedGihyo2280002"></a>
##### キーボードの用法をカスタマイズする

<a id="viBibleImprovedGihyo2280003"></a>
##### 表示のためのカスタマイズ

<a id="viBibleImprovedGihyo2280004"></a>
##### テキスト操作のためのカスタマイズ

<a id="viBibleImprovedGihyo2280005"></a>
##### その他の設定

<a id="viBibleImprovedGihyo2280006"></a>
##### ターミナルオプション

<a id="viBibleImprovedGihyo2280007"></a>
##### あまり使われないオプション

<a id="viBibleImprovedGihyo100027"></a>
#### 式と関数

<a id="viBibleImprovedGihyo2270001"></a>
##### 変数

<a id="viBibleImprovedGihyo2270002"></a>
##### 定数

<a id="viBibleImprovedGihyo2270003"></a>
##### 演算

<a id="viBibleImprovedGihyo2270004"></a>
##### コマンド

<a id="viBibleImprovedGihyo2270005"></a>
##### 制御ステートメント

<a id="viBibleImprovedGihyo2270006"></a>
##### 組み込み関数

<a id="viBibleImprovedGihyo100026"></a>
#### GUIコマンド：上級編

<a id="viBibleImprovedGihyo2260001"></a>
##### ウィンドウ操作

<a id="viBibleImprovedGihyo2260002"></a>
##### マウスのカスタマイズ

<a id="viBibleImprovedGihyo2260003"></a>
##### 特殊なGUIコマンド

<a id="viBibleImprovedGihyo100025"></a>
#### コマンドモード(:)のコマンド全集

<a id="viBibleImprovedGihyo2250001"></a>
##### コマンドの編集

###### コマンドを編集する。
ex削除コマンド様式：
`:[範囲] delete [レジスタ] カウント`  
範囲：削除対象の行を指定する。  
レジスタ：削除テキストの格納レジスタを指定する。  
カウント：削除行数を指定する。  

* 範囲  
検索コマンドも含む。  
例）
`:/hello/,/goodby/ delete`  
**hello**から**goodby**までを削除する。  
`:/hello/+1,/goodby/-1 delete`  
helloの**次の行**からgoodbyの**手前の行**までを削除する。  

検索には、[パターン指定](https://vim-jp.org/vimdoc-ja/usr_27.html#27.3)には、次のオペレータが使える。  
|オペレータ|説明|
|----------|----|
|`\/`|最後に使ったパターンの前方検索|
|`\?`|最後に使ったパターンの後方検索|
|`\&`|置き換えパターンとして最後に使ったパターンの前方検索|
※何となく理解できたが、突然**パターン指定**の言葉が出てきたため、調べる必要がある。  
todo: パターン指定  


<a id="viBibleImprovedGihyo2250002"></a>
##### プログラム用のコマンド

###### レジスタの内容を実行する(`:[行]@[レジスタ]`)。
様式：
`:[行]@レジスタ`  
レジスタにマクロを登録したのをこのコマンドによって、指定行に移動後にレジスタマクロを実行する。  

直前のコマンド行実行：
`:@:`  

直前の@レジスタ実行コマンド：
`:[行]@@`  


<a id="viBibleImprovedGihyo2250003"></a>
##### 簡単な編集

<a id="viBibleImprovedGihyo2250004"></a>
##### その他のコマンド

<a id="viBibleImprovedGihyo100024"></a>
#### 短縮形とキーボードマッピングに関する全て

<a id="viBibleImprovedGihyo2240001"></a>
##### 省略形

<a id="viBibleImprovedGihyo2240002"></a>
##### マッピング

<a id="viBibleImprovedGihyo100023"></a>
#### プログラミングに便利な機能

<a id="viBibleImprovedGihyo2230001"></a>
##### インデント

###### レジスタの挿入
`<Ctrl-R>`でのレジスタ内の挿入は、オートインデントになる。  
それを避ける場合は、`<Ctrl-R><Ctrl-O>[レジスタ]`を使う。  
強制的に(しかも適切な)オートインデントを付ける場合は、`<Ctrl-R><Ctrl-P>[レジスタ]`を使う。  

<a id="viBibleImprovedGihyo2230002"></a>
##### コメント

<a id="viBibleImprovedGihyo2230003"></a>
##### インデントのカスタマイズ

<a id="viBibleImprovedGihyo2230004"></a>
##### ファイルの比較

<a id="viBibleImprovedGihyo2230005"></a>
##### メソッド・関数への移動

<a id="viBibleImprovedGihyo2230006"></a>
##### プログラミングにおける複数のファイルの扱い

<a id="viBibleImprovedGihyo2230007"></a>
##### プログラミングにおける検索方法のカスタマイズ

<a id="viBibleImprovedGihyo2230008"></a>
##### ハイライト機能のカスタマイズ

<a id="viBibleImprovedGihyo100022"></a>
#### ビジュアルモード：上級編

<a id="viBibleImprovedGihyo2220001"></a>
##### ビジュアルモードでの操作

<a id="viBibleImprovedGihyo100021"></a>
#### ウィンドウとセッション：完全解説 285

<a id="viBibleImprovedGihyo2210001"></a>
##### 移動

<a id="viBibleImprovedGihyo2210002"></a>
##### ウィンドウ操作

<a id="viBibleImprovedGihyo2210003"></a>
##### さまざまなバッファ

<a id="viBibleImprovedGihyo2210004"></a>
##### セッション

<a id="viBibleImprovedGihyo100020"></a>
#### さまざまなテキストブロックと複数ファイル

<a id="viBibleImprovedGihyo2200001"></a>
##### テキスト操作(`p`・`P`・`'`・`]`・`[`・`'.`)

* ヤンクや貼り付け操作。  
`p(小文字のp)`で貼り付けた場合、貼り付けた行の先頭に移動する。  
`P(大文字のP)`で貼り付けた場合、貼り付け終わった次の行に移動する。  

* 特殊マーク(シングルクォーテーション`'`)  

|特殊マーク|説明|
|----------|----|
|`'`|直前のジャンプ位置に戻る(違う？`''`のこと？)。|
|`]`|最後に挿入したテキストの開始位置|
|`[`|最後に挿入したテキストの終了位置|
|`''`|ファイルを閉じたときのカーソル位置(これが直前のジャンプ位置に移動する操作じゃないのか？)|
|`'.`|直前のジャンプ位置に移動する？|
※下2つは挙動が異なるが、どう違うのか分からない。  

<a id="viBibleImprovedGihyo2200002"></a>
##### レジスタ操作(`"[a-z]`・`"[1-9]`・`"_`・`"=`)

* 複数レジスタ  
様式：
`"[a-z]`  
例）
`"ayy`  
この場合、aレジスタにヤンクする。  
※大文字のアルファベットを使う場合、そのレジスタに追記する。  
また、マクロ`@[a-z]`と同じレジスタを使うことになるため、気をつけること(上書きが行われる)。  

* レジスタ内容の確認方法  
様式：
`:registers [a-z]`  
指定のレジスタの中身を表示する(いくつでも。指定が無ければ全てのレジスタを表示する)。  

* 特殊マーク(数字`[1-9]`)  
削除したテキストを数字のレジスタに待避している。  
`"1`：最後に削除したテキスト。  
`"2`：その前に削除したテキスト。  
`"3〜9`：前々と辿っていく。  

|特殊マーク|説明|書き込み|
|----------|----|--------|
|`0`|最後にヤンクしたテキスト|Yes|
|`-`|最後の細かい削除|No|
|`.`|最後に挿入したテキスト|No|
|`%`|現在ファイルの名前|No|
|`#`|代替ファイルの名前|No|
|`/`|最後に検索した文字列|No|
|`:`|最後に実行した`:`|No|
|`_`|ブラックホール(下記説明)|Yes|
|`=`|計算式(下記説明)|No|
|`*`|マウスで選択されたテキスト(下記説明)|Yes|

* ブラックホールレジスタ(`_`)  
レジスタを経由せずに操作する。  
例）
`"_dd`  
特殊マークの1レジスタに格納せずに削除することを意味する。  

* 計算式(expressionレジスタ`=`)  
`"=[計算式]`：計算をしてくれるが、どこにも表示しないため、`p`にて貼り付けを行う。  
四則演算以外にもファンクションやオペレータも使える。  
他には、`$変数名`にて、環境変数値も使える。  

* クリップボードレジスタ(マウスで選択されたテキスト`*`)  
OSのクリップボードを経由する。  


<a id="viBibleImprovedGihyo2200003"></a>
##### 複数のファイル操作

<a id="viBibleImprovedGihyo2200004"></a>
##### カーソルの位置を指定して編集を開始する

<a id="viBibleImprovedGihyo2200005"></a>
##### テキストの挿入


* レジスタ挿入(`<Ctrl-r>[a-z]`)
挿入モードにて、`<Ctrl-r>`を使う場合、レジスタからの挿入ができる。  
例）
`<Ctrl-r>a`の場合、aレジスタを貼り付ける。  

<a id="viBibleImprovedGihyo2200006"></a>
##### 情報の保存

<a id="viBibleImprovedGihyo2200007"></a>
##### テキストの行に対する設定

<a id="viBibleImprovedGihyo100019"></a>
#### 正規表現を使った高度な検索

<a id="viBibleImprovedGihyo2190001"></a>
##### 検索オプション

<a id="viBibleImprovedGihyo2190002"></a>
##### 正規表現

<a id="viBibleImprovedGihyo100018"></a>
#### 基本的な編集作業（完結編）

<a id="viBibleImprovedGihyo2180001"></a>
##### 単語の移動

<a id="viBibleImprovedGihyo2180002"></a>
##### 行移動

<a id="viBibleImprovedGihyo2180003"></a>
##### 行頭行末の移動

<a id="viBibleImprovedGihyo2180004"></a>
##### 位置確認

<a id="viBibleImprovedGihyo2180005"></a>
##### スクロール

<a id="viBibleImprovedGihyo2180006"></a>
##### 削除

<a id="viBibleImprovedGihyo2180007"></a>
##### 挿入

<a id="viBibleImprovedGihyo2180008"></a>
##### 演算

<a id="viBibleImprovedGihyo2180009"></a>
##### 結合

<a id="viBibleImprovedGihyo2180010"></a>
##### 置換え

<a id="viBibleImprovedGihyo2180011"></a>
##### 文字の変更

<a id="viBibleImprovedGihyo2180012"></a>
##### 取り消し

<a id="viBibleImprovedGihyo2180013"></a>
##### 編集の終了



<a id="viBibleImprovedGihyo000001"></a>
### チュートリアル

<a id="viBibleImprovedGihyo100017"></a>
#### 本書で分類されていないトピックス

<a id="viBibleImprovedGihyo1170001"></a>
##### インターフェース

<a id="viBibleImprovedGihyo1170002"></a>
##### 外国語

<a id="viBibleImprovedGihyo1170003"></a>
##### その他の編集機能

<a id="viBibleImprovedGihyo100016"></a>
#### 操作方法

<a id="viBibleImprovedGihyo1160001"></a>
##### 入れ替え

<a id="viBibleImprovedGihyo1160002"></a>
##### コピー

<a id="viBibleImprovedGihyo1160003"></a>
##### ソート

<a id="viBibleImprovedGihyo1160004"></a>
##### 言語のための機能

<a id="viBibleImprovedGihyo1160005"></a>
##### その他さまざまな機能

<a id="viBibleImprovedGihyo100015"></a>
#### その他のコマンド

<a id="viBibleImprovedGihyo1150001"></a>
##### 文字

<a id="viBibleImprovedGihyo1150002"></a>
##### スクリーン

<a id="viBibleImprovedGihyo1150003"></a>
##### さまざまな機能

<a id="viBibleImprovedGihyo100014"></a>
#### ファイル回復とコマンドライン引数

<a id="viBibleImprovedGihyo1140001"></a>
##### コマンドライン

<a id="viBibleImprovedGihyo1140002"></a>
##### 暗号化

<a id="viBibleImprovedGihyo1140003"></a>
##### バッチ処理

<a id="viBibleImprovedGihyo1140004"></a>
##### その他のコマンドラインから機能

<a id="viBibleImprovedGihyo1140005"></a>
##### バックアップ

<a id="viBibleImprovedGihyo100013"></a>
#### オートコマンド

<a id="viBibleImprovedGihyo1130001"></a>
##### 基本的なオートコマンド

<a id="viBibleImprovedGihyo1130002"></a>
##### グループ化

<a id="viBibleImprovedGihyo1130003"></a>
##### イベント

<a id="viBibleImprovedGihyo100012"></a>
#### 自動完了

<a id="viBibleImprovedGihyo1120001"></a>
##### 自動入力

<a id="viBibleImprovedGihyo1120002"></a>
##### スクリーンの移動

<a id="viBibleImprovedGihyo100011"></a>
#### テキストファイルの扱い方

<a id="viBibleImprovedGihyo1110001"></a>
##### 改行

<a id="viBibleImprovedGihyo1110002"></a>
##### テキストのフォーマット

<a id="viBibleImprovedGihyo1110003"></a>
##### フォーマット方式の調整

<a id="viBibleImprovedGihyo1110004"></a>
##### セクション

<a id="viBibleImprovedGihyo1110005"></a>
##### 暗号化

<a id="viBibleImprovedGihyo100010"></a>
#### GUIの基本的な使い方

<a id="viBibleImprovedGihyo1100001"></a>
##### Gvimの使い方

<a id="viBibleImprovedGihyo100009"></a>
#### 基本的なコマンドモードの操作

<a id="viBibleImprovedGihyo190001"></a>
##### コマンドライン出力

<a id="viBibleImprovedGihyo190002"></a>
##### 置換え

<a id="viBibleImprovedGihyo190003"></a>
##### ファイルの読み込みと保存

<a id="viBibleImprovedGihyo190004"></a>
##### シェルの利用

<a id="viBibleImprovedGihyo100008"></a>
#### 基本的な略語，キーボード割り当て，初期設定ファイル

<a id="viBibleImprovedGihyo180001"></a>
##### 略語

<a id="viBibleImprovedGihyo180002"></a>
##### キーマッピング

<a id="viBibleImprovedGihyo180003"></a>
##### 環境設定

<a id="viBibleImprovedGihyo100007"></a>
#### プログラマ向けコマンド

<a id="viBibleImprovedGihyo170001"></a>
##### カラーシンタックス

<a id="viBibleImprovedGihyo170002"></a>
##### インデント

<a id="viBibleImprovedGihyo170003"></a>
##### カーソルを利用した検索

<a id="viBibleImprovedGihyo170004"></a>
##### ブロックに対するインデント

<a id="viBibleImprovedGihyo170005"></a>
##### 便利な検索

<a id="viBibleImprovedGihyo170006"></a>
##### ソート

<a id="viBibleImprovedGihyo170007"></a>
##### デバック

<a id="viBibleImprovedGihyo100006"></a>
#### 基本的なビジュアルモード

<a id="viBibleImprovedGihyo160001"></a>
##### ビジュアルモード

<a id="viBibleImprovedGihyo160002"></a>
##### ビジュアルモードでの編集作業

<a id="viBibleImprovedGihyo160003"></a>
##### ビジュアルブロックモードでの編集作業

<a id="viBibleImprovedGihyo100005"></a>
#### 複数ウィンドウの扱い

<a id="viBibleImprovedGihyo150001"></a>
##### ウィンドウ分割

<a id="viBibleImprovedGihyo150002"></a>
##### バッファ

<a id="viBibleImprovedGihyo100004"></a>
#### 大きなサイズのテキストの編集および複数ファイルの編集

<a id="viBibleImprovedGihyo140001"></a>
##### 編集

<a id="viBibleImprovedGihyo140002"></a>
##### マーク

<a id="viBibleImprovedGihyo140003"></a>
##### ヤンク

<a id="viBibleImprovedGihyo140004"></a>
##### 複数ファイルの扱い

<a id="viBibleImprovedGihyo100003"></a>
#### 検索

<a id="viBibleImprovedGihyo130001"></a>
##### 前方検索

<a id="viBibleImprovedGihyo130002"></a>
##### 後方検索

<a id="viBibleImprovedGihyo130003"></a>
##### 特殊記号の使い方

<a id="viBibleImprovedGihyo100002"></a>
#### 高度な編集

<a id="viBibleImprovedGihyo120001"></a>
##### 移動

<a id="viBibleImprovedGihyo120002"></a>
##### テキストに対する操作

<a id="viBibleImprovedGihyo100001"></a>
#### 編集の基本

<a id="viBibleImprovedGihyo110001"></a>
##### 準備

<a id="viBibleImprovedGihyo110002"></a>
##### モード

<a id="viBibleImprovedGihyo110003"></a>
##### Vimの終了

<a id="viBibleImprovedGihyo110004"></a>
##### 基本操作



<a id="memo2999"></a>
### 個人メモ


---
<a id="kadokawaVimSpeedUpEdit9784048916592"></a>
## 書籍：実践Vim　思考のスピードで編集しよう！ (アスキー書籍)

<a id="vimPracticeThinkingSpeedUpKadokawa010001"></a>
### TIP1：ドットコマンドとは


<a id="vimPracticeThinkingSpeedUpKadokawa010002"></a>
### TIP2：DRY（Don't Repeat Yourself）


<a id="vimPracticeThinkingSpeedUpKadokawa010003"></a>
### TIP3：一歩下がって、三歩進む


<a id="vimPracticeThinkingSpeedUpKadokawa010004"></a>
### TIP4：実行して、繰り返して、元に戻す


<a id="vimPracticeThinkingSpeedUpKadokawa010005"></a>
### TIP5：手作業での検索と置換


<a id="vimPracticeThinkingSpeedUpKadokawa010006"></a>
### TIP6：ドットの公式


<a id="vimPracticeThinkingSpeedUpKadokawa120001"></a>
### TIP7：埃を払って一息つこう


<a id="vimPracticeThinkingSpeedUpKadokawa120002"></a>
### TIP8：アンドゥはひとまとめに


<a id="vimPracticeThinkingSpeedUpKadokawa120003"></a>
### TIP9：変更を繰り返し可能なものにする


<a id="vimPracticeThinkingSpeedUpKadokawa120004"></a>
### TIP10：回数指定を使って簡単な計算を行う


<a id="vimPracticeThinkingSpeedUpKadokawa120005"></a>
### TIP11：繰り返しで済むなら、回数を指定しない


<a id="vimPracticeThinkingSpeedUpKadokawa120006"></a>
### TIP12：統合して統治せよ


<a id="vimPracticeThinkingSpeedUpKadokawa130001"></a>
### TIP13：挿入モードで簡単修正


<a id="vimPracticeThinkingSpeedUpKadokawa130002"></a>
### TIP14：ノーマルモードへの復帰


<a id="vimPracticeThinkingSpeedUpKadokawa130003"></a>
### TIP15：挿入モードから抜けないでレジスタから貼り付け


<a id="vimPracticeThinkingSpeedUpKadokawa130004"></a>
### TIP16：簡単な計算をその場で実行


<a id="vimPracticeThinkingSpeedUpKadokawa130005"></a>
### TIP17：文字コードを使って特殊文字を入力


<a id="vimPracticeThinkingSpeedUpKadokawa130006"></a>
### TIP18：ダイグラフによって特殊文字を挿入


<a id="vimPracticeThinkingSpeedUpKadokawa130007"></a>
### TIP19：置換モードで既存のテキストを上書き


<a id="vimPracticeThinkingSpeedUpKadokawa140001"></a>
### TIP20：ビジュアルモードとは


<a id="vimPracticeThinkingSpeedUpKadokawa140002"></a>
### TIP21：ビジュアルな選択範囲の定義


<a id="vimPracticeThinkingSpeedUpKadokawa140003"></a>
### TIP22：行指向のビジュアルモードコマンドを繰り返す


<a id="vimPracticeThinkingSpeedUpKadokawa140004"></a>
### TIP23：可能ならばビジュアルコマンドではなくオペレータを優先しよう


<a id="vimPracticeThinkingSpeedUpKadokawa140005"></a>
### TIP24：ブロック指向のビジュアルモードで表形式のデータを編集


<a id="vimPracticeThinkingSpeedUpKadokawa140006"></a>
### TIP25：テキスト列の変更


<a id="vimPracticeThinkingSpeedUpKadokawa140007"></a>
### TIP26：矩形状ではないビジュアルな選択範囲にテキストを追加


<a id="vimPracticeThinkingSpeedUpKadokawa150001"></a>
### TIP27：Vimのコマンドラインモード


<a id="vimPracticeThinkingSpeedUpKadokawa150002"></a>
### TIP28：連続する行に対してコマンドを実行する


<a id="vimPracticeThinkingSpeedUpKadokawa150003"></a>
### TIP29：「:t」／「:m」コマンドで行をコピー／移動


<a id="vimPracticeThinkingSpeedUpKadokawa150004"></a>
### TIP30：選択範囲に対してノーマルモードのコマンドを実行する


<a id="vimPracticeThinkingSpeedUpKadokawa150005"></a>
### TIP31：直前のExコマンドを繰り返す


<a id="vimPracticeThinkingSpeedUpKadokawa150006"></a>
### TIP32：Exコマンドでタブ補完


<a id="vimPracticeThinkingSpeedUpKadokawa150007"></a>
### TIP33：カーソル位置にある単語をコマンドプロンプトに挿入


<a id="vimPracticeThinkingSpeedUpKadokawa150008"></a>
### TIP34：履歴からコマンドを呼び戻す


<a id="vimPracticeThinkingSpeedUpKadokawa150009"></a>
### TIP35：シェルでコマンドを実行


<a id="vimPracticeThinkingSpeedUpKadokawa260001"></a>
### TIP36：バッファリストを使ってオープン中のファイルを管理する


<a id="vimPracticeThinkingSpeedUpKadokawa260002"></a>
### TIP37：引数リストを使ってバッファをコレクションにまとめる


<a id="vimPracticeThinkingSpeedUpKadokawa260003"></a>
### TIP38：隠しファイルの管理


<a id="vimPracticeThinkingSpeedUpKadokawa260004"></a>
### TIP39：ワークスペースを分割ウィンドウにする


<a id="vimPracticeThinkingSpeedUpKadokawa260005"></a>
### TIP40：タブページを使ってウィンドウのレイアウトを管理


<a id="vimPracticeThinkingSpeedUpKadokawa270001"></a>
### TIP41：「:edit」でファイルパスを指定してファイルをオープンする


<a id="vimPracticeThinkingSpeedUpKadokawa270002"></a>
### TIP42：「:find」を使い名前を指定してファイルをオープンする


<a id="vimPracticeThinkingSpeedUpKadokawa270003"></a>
### TIP43：netrwでファイルシステムを探索


<a id="vimPracticeThinkingSpeedUpKadokawa270004"></a>
### TIP44：存在していないディレクトリにファイルを保存


<a id="vimPracticeThinkingSpeedUpKadokawa270005"></a>
### TIP45：スーパーユーザーとしてファイルを保存


<a id="vimPracticeThinkingSpeedUpKadokawa380001"></a>
### TIP46：自分の指はホームポジションから外さない


<a id="vimPracticeThinkingSpeedUpKadokawa380002"></a>
### TIP47：論理行と表示行を区別しよう


<a id="vimPracticeThinkingSpeedUpKadokawa380003"></a>
### TIP48：単語単位での移動


<a id="vimPracticeThinkingSpeedUpKadokawa380004"></a>
### TIP49：文字を検索


<a id="vimPracticeThinkingSpeedUpKadokawa380005"></a>
### TIP50：検索して移動


<a id="vimPracticeThinkingSpeedUpKadokawa380006"></a>
### TIP51：高精度なテキストオブジェクトを使って選択範囲をトレース


<a id="vimPracticeThinkingSpeedUpKadokawa380007"></a>
### TIP52：デリミタを含めて削除したり、デリミタの内側を変更したり


<a id="vimPracticeThinkingSpeedUpKadokawa380008"></a>
### TIP53：場所をマークして、そこにサッと戻る


<a id="vimPracticeThinkingSpeedUpKadokawa380009"></a>
### TIP54：カッコから対となるカッコにジャンプ


<a id="vimPracticeThinkingSpeedUpKadokawa390001"></a>
### TIP55：ジャンプリストの移動


<a id="vimPracticeThinkingSpeedUpKadokawa390002"></a>
### TIP56：変更リストを辿る


<a id="vimPracticeThinkingSpeedUpKadokawa390003"></a>
### TIP57：カーソル位置に記述されているファイル名のファイルにジャンプする


<a id="vimPracticeThinkingSpeedUpKadokawa390004"></a>
### TIP58：グローバルマークを使ってファイル間をテキパキと移動する


<a id="vimPracticeThinkingSpeedUpKadokawa4100001"></a>
### TIP59：無名レジスタを使った削除／ヤンク／プット


<a id="vimPracticeThinkingSpeedUpKadokawa4100002"></a>
### TIP60：Vimのレジスタを掌握する


<a id="vimPracticeThinkingSpeedUpKadokawa4100003"></a>
### TIP61：レジスタを使ってビジュアルな選択範囲を置換


<a id="vimPracticeThinkingSpeedUpKadokawa4100004"></a>
### TIP62：レジスタから貼り付け


<a id="vimPracticeThinkingSpeedUpKadokawa4100005"></a>
### TIP63：システムレベルのクリップボードを扱う


<a id="vimPracticeThinkingSpeedUpKadokawa4110001"></a>
### TIP64：マクロの記録と実行


<a id="vimPracticeThinkingSpeedUpKadokawa4110002"></a>
### TIP65：正規化、撃破、中断


<a id="vimPracticeThinkingSpeedUpKadokawa4110003"></a>
### TIP66：回数を指定してマクロを再生する


<a id="vimPracticeThinkingSpeedUpKadokawa4110004"></a>
### TIP67：連続する行に対して変更を繰り返す


<a id="vimPracticeThinkingSpeedUpKadokawa4110005"></a>
### TIP68：マクロにコマンドを追記する


<a id="vimPracticeThinkingSpeedUpKadokawa4110006"></a>
### TIP69：複数のファイルにマクロを適用する


<a id="vimPracticeThinkingSpeedUpKadokawa4110007"></a>
### TIP70：イテレータを評価してリスト中の要素に番号をつける


<a id="vimPracticeThinkingSpeedUpKadokawa4110008"></a>
### TIP71：マクロの内容を編集する


<a id="vimPracticeThinkingSpeedUpKadokawa5120001"></a>
### TIP72：検索パターンが大文字／小文字を区別するかを制御する


<a id="vimPracticeThinkingSpeedUpKadokawa5120002"></a>
### TIP73：正規表現検索で「v」パターンスイッチを使う


<a id="vimPracticeThinkingSpeedUpKadokawa5120003"></a>
### TIP74：s{}Vリテラルスイッチを使ってテキストそのものを検索


<a id="vimPracticeThinkingSpeedUpKadokawa5120004"></a>
### TIP75：カッコを使って部分マッチをキャプチャする


<a id="vimPracticeThinkingSpeedUpKadokawa5120005"></a>
### TIP76：単語の境界を指定する


<a id="vimPracticeThinkingSpeedUpKadokawa5120006"></a>
### TIP77：マッチ境界を指定する


<a id="vimPracticeThinkingSpeedUpKadokawa5120007"></a>
### TIP78：問題字をエスケープ


<a id="vimPracticeThinkingSpeedUpKadokawa5130001"></a>
### TIP79：検索コマンドを使ってみよう


<a id="vimPracticeThinkingSpeedUpKadokawa5130002"></a>
### TIP80：マッチを強調表示する


<a id="vimPracticeThinkingSpeedUpKadokawa5130003"></a>
### TIP81：実行前に最初にマッチするものをプレビュー


<a id="vimPracticeThinkingSpeedUpKadokawa5130004"></a>
### TIP82：現在のパターンにマッチするものの数を数える


<a id="vimPracticeThinkingSpeedUpKadokawa5130005"></a>
### TIP83：検索のマッチの末尾にカーソルをオフセットする


<a id="vimPracticeThinkingSpeedUpKadokawa5130006"></a>
### TIP84：マッチ全体に対して処理を行う


<a id="vimPracticeThinkingSpeedUpKadokawa5130007"></a>
### TIP85：検索履歴を繰り返しながら複雑なパターンを作り上げる


<a id="vimPracticeThinkingSpeedUpKadokawa5130008"></a>
### TIP86：現在のビジュアルな選択範囲の検索


<a id="vimPracticeThinkingSpeedUpKadokawa5140001"></a>
### TIP87：置換コマンド


<a id="vimPracticeThinkingSpeedUpKadokawa5140002"></a>
### TIP88：ファイル中のすべてのマッチを検索／置換する


<a id="vimPracticeThinkingSpeedUpKadokawa5140003"></a>
### TIP89：置換のたびに確認する


<a id="vimPracticeThinkingSpeedUpKadokawa5140004"></a>
### TIP90：直前の検索パターンを流用する


<a id="vimPracticeThinkingSpeedUpKadokawa5140005"></a>
### TIP91：レジスタの内容を使って置換を行う


<a id="vimPracticeThinkingSpeedUpKadokawa5140006"></a>
### TIP92：直前の置換コマンドを繰り返す


<a id="vimPracticeThinkingSpeedUpKadokawa5140007"></a>
### TIP93：部分マッチを使ってCSVのフィールドを入れ替える


<a id="vimPracticeThinkingSpeedUpKadokawa5140008"></a>
### TIP94：置換時に算術演算を行う


<a id="vimPracticeThinkingSpeedUpKadokawa5140009"></a>
### TIP95：2つ以上の単語を入れ替える


<a id="vimPracticeThinkingSpeedUpKadokawa5140010"></a>
### TIP96：複数ファイル間で検索と置換を行う


<a id="vimPracticeThinkingSpeedUpKadokawa5150001"></a>
### TIP97：グローバルコマンドとは


<a id="vimPracticeThinkingSpeedUpKadokawa5150002"></a>
### TIP98：パターンを含む行を削除する


<a id="vimPracticeThinkingSpeedUpKadokawa5150003"></a>
### TIP99：レジスタにTODOアイテムを収集する


<a id="vimPracticeThinkingSpeedUpKadokawa5150004"></a>
### TIP100：CSSファイル中のルールのプロパティをアルファベット順に並べ替える


<a id="vimPracticeThinkingSpeedUpKadokawa6160001"></a>
### TIP101：ctagsとは


<a id="vimPracticeThinkingSpeedUpKadokawa6160002"></a>
### TIP102：ctagsと連携するようにVimを構成する


<a id="vimPracticeThinkingSpeedUpKadokawa6160003"></a>
### TIP103：Vimのタグナビゲーションコマンドを使ってキーワード定義に移動する


<a id="vimPracticeThinkingSpeedUpKadokawa6170001"></a>
### TIP104：Vimを抜けずにコードをコンパイル


<a id="vimPracticeThinkingSpeedUpKadokawa6170002"></a>
### TIP105：quickfixリストをブラウズする


<a id="vimPracticeThinkingSpeedUpKadokawa6170003"></a>
### TIP106：以前のquickfixリストから結果を呼び戻す


<a id="vimPracticeThinkingSpeedUpKadokawa6170004"></a>
### TIP107：外部コンパイラのカスタマイズ


<a id="vimPracticeThinkingSpeedUpKadokawa6180001"></a>
### TIP108：Vimを抜けずにgrepを呼び出す


<a id="vimPracticeThinkingSpeedUpKadokawa6180002"></a>
### TIP109：grepプログラムのカスタマイズ


<a id="vimPracticeThinkingSpeedUpKadokawa6180003"></a>
### TIP110：Vimの内部検索エンジンを使ってgrepする


<a id="vimPracticeThinkingSpeedUpKadokawa6190001"></a>
### TIP111：Vimのキーワード自動補完機能とは


<a id="vimPracticeThinkingSpeedUpKadokawa6190002"></a>
### TIP112：自動補完のポップアップメニューを操作する


<a id="vimPracticeThinkingSpeedUpKadokawa6190003"></a>
### TIP113：キーワードの定義元を把握する


<a id="vimPracticeThinkingSpeedUpKadokawa6190004"></a>
### TIP114：辞書を使って単語を自動補完


<a id="vimPracticeThinkingSpeedUpKadokawa6190005"></a>
### TIP115：行を丸ごと自動補完


<a id="vimPracticeThinkingSpeedUpKadokawa6190006"></a>
### TIP116：ファイル名の自動補完


<a id="vimPracticeThinkingSpeedUpKadokawa6190007"></a>
### TIP117：コンテキストにあわせて自動補完を行う


<a id="vimPracticeThinkingSpeedUpKadokawa6200001"></a>
### TIP118：作業結果にスペルチェックをかけてみよう


<a id="vimPracticeThinkingSpeedUpKadokawa6200002"></a>
### TIP119：別の辞書を使用する


<a id="vimPracticeThinkingSpeedUpKadokawa6200003"></a>
### TIP120：スペルファイルに単語を追加する


<a id="vimPracticeThinkingSpeedUpKadokawa6200004"></a>
### TIP121：スペルミスを挿入モードで修正する


<a id="memo1999"></a>
### 個人メモ


---
ーーー 最終行 ーーー
<!-- vim:set ts=4 sts=4 sw=4 tw=0: -->
