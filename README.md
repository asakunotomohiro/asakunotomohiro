# asakunotomohiro
俺が俺にオンデマンド

<a name="howtousethebranch"></a>
## ブランチの利用方法
それぞれのブランチで勉強した内容は、そのまま派生させたブランチに置いておく。  
万が一masterブランチに取り込む場合、結論だけをチェリーピッキングして統合する。  

* 利用用途  
  * [生活用途のコンピューティング](#computingforMylife)  
    コンピュータを使った日常生活の紹介  
  * [プログラミング言語](#computerProgramming)  
    仕事や生活で使うプログラミングの詳解  

<a name="computingforMylife"></a>
## 生活用途のコンピューティング
ブランチ名：study2computerLife
日常生活でのパソコン利用にて、頻繁に利用している技術をメモ対象にする。  

<details><summary>詳細</summary>

* メモ対象一覧  
  * [エディタ利用方法](#computingforEditor)  
    今は1種類のみ。  
    * vimエディタ  
  * [ドキュメント作成方法](#computingforMarkdown)  
    * markdown  
    * sphinx  
  * [検索方法](#computingforSearch)  
    * 正規表現  
  * [Git利用方法](#computingforGit)  
    そもそものここのメモ取りに使う最低限の技術。  

<a name="computingforEditor"></a>
### エディタ
基本的に、Vimエディタを使っているが、Windowsでは秀丸エディタとサクラエディタも使っている。  
Macであれば、CotEditorも使っている。  


#### Vimエディタ
このエディタでは、正規表現を使えるため、その技術は、以下の[検索方法](#computingforSearch)にて集約させている。  
ブランチ名：vimEditor  


<a name="computingforMarkdown"></a>
### ドキュメント作成
ここでメモを残す技術は、[マークダウン技術](#computingforMarkdownmarkdown)もしくは[リストラクチャーテキスト技術](#computingforMarkdownsphinx)が必要になる。  
現在の作業：中断。  


<a name="computingforMarkdownmarkdown"></a>
#### markdown
現在の状況：表の作成のみだけを記載しており、それ以外の記述は中断している。  


<a name="computingforMarkdownsphinx"></a>
#### sphinx
現在の状況：環境整備のひとつとして、Macへのインストール作業のみだけを記載しており、それ以外の記述は中断している。  


<a name="computingforSearch"></a>
### 検索方法
普通に検索するだけならば気にすることも無ければメモとして記録に残すこともないが、基本的には正規表現を使った技術をここにメモすることにする。  
ブランチ名：regularExpressions  


<a name="computingforGit"></a>
### Git
いわゆる、プログラム開発用に開発されたソースファイルの変更履歴を記録・追跡するための分散型バージョン管理システムのこと。  
私はプログラミング用ではなく、普通に記録残し用のメモ取りとして使う。  
ブランチ名：gitMemoPocket  

</details>

<a name="computerProgramming"></a>
## プログラミング言語
ブランチ名：study2programming  
現在「Pythonで学ぶアルゴリズムの教科書」を基準にアルゴリズムの勉強をするために、基礎知識5種類を勉強している。  

日常生活用のプログラミング系統のメモもここに記録する。  
例えば、自動ビルディング・仮想環境ツールなど。  

<details><summary>詳細</summary>

* 日常性活用プログラミング系統技術  
  * [自動ビルディング](#automaticBuildingcomputerProgramming)  
    * make  
    * その他  
  * [仮想環境ツール](#VirtualEnvironmenttoolcomputerProgramming)  
    * docker  
    * その他  
  * [バージョン管理システム](#changehistorymanagementcomputerProgramming)  
    ファイル変更記録追跡ツールのこと。  
    * Git  
    * その他  

現在の基礎知識5種類とは、以下になる。  
<a name="studyProgrammingFivetypes"></a>
* 基礎知識5種類  
  [構造化プログラミング](#whatisStructuredprogramming)のために勉強する。  
  * 変数  
  * 配列  
  * 条件分岐  
  * 繰り返し  
  * 関数  

この基礎知識5種類の勉強が終わった場合、マスターブランチにチェリーピッキング実施することを考えている。  

<a name="StructuredprogrammingStudyend"></a>
* 基礎知識5種類の勉強完了済みプログラミング言語一覧  
  * Python言語  
    そもそもの書籍で説明している言語なので、これを優先しなければ、他のプログラミング言語に応用できない。  
    ブランチ名：pythonLang  
  * Perl言語  
    他のプログラミング言語とは形式が異なり、配列の操作すら方言が強い。  
    ブランチ名：perlLang  
  * [vimScript言語](#vimscriptStructuredprogramming)  
    普通に使うエディタに付いているスクリプト(これで何かを作り上げるのは異常)。  

<a name="StructuredprogrammingStudystart"></a>
* [構造化プログラミング](#whatisStructuredprogramming)用基礎知識5種類の勉強に着手した一覧。  
  * C言語  
    ブランチ名：cLang  
  * C++言語  
    ブランチ名：cPlusPlus  
  * C#言語  
    ブランチ名：cSharpLang  
  * Java言語  
    ブランチ名：javaLang  
  * Go言語  
    ブランチ名：goLang  

<a name="whatisStructuredprogramming"></a>
* 構造化プログラミングとは。  
  そもそもの話。  
  基本制御構造の組み合わせのことをいい、これを元にアルゴリズムの勉強を進めることができる。  
  * 逐次構造  
    純粋に処理が順番通りに流れること。  
  * 選択構造  
    条件分岐により2通りに処理が分かれるうちの1つを選択すること。  
    いわゆる`if`文  
  * 前判定型反復構造  
    繰り返し処理をするための条件を満たした場合に処理が繰り返される。  
    いわゆる`for`・`while`文  
  * 後判定型反復構造  
    最低1回処理をした後に、繰り返す条件が満たされていれば繰り返される。  
    いわゆる`do〜while`文  
    これが存在しないプログラミング言語もある。  

構造化プログラミングの最低限のルールは、「1つの入り口に1つの出口があること」を守る必要がある。  
要は、入り口が1つなのに出口が2つあったり、入り口が2つに出口が1つというのは論外と言うこと。  
プログラムの規模が大きくなった場合、この最低限のルールが守られにくくなるため気をつけること。  


<a name="automaticBuildingcomputerProgramming"></a>
### 自動ビルディング
プログラミングの規模が大きくなれば当然コンパイル方法を自動化したいと言うことで、"make"技術の勉強を始めるつもり(難しい)。  
他には、"Ant"・"Gradle"とか？  
ブランチ名：makefile\_study  


<a name="VirtualEnvironmenttoolcomputerProgramming"></a>
### 仮想環境ツール
今は"docker"を勉強しようとしている。  
昔は、"VMware Fusion"・"VirtualBox"を使っていたと言うことで、仮想環境であれば、ここで勉強する。  
ブランチ名：virtualityDocker  


<a name="changehistorymanagementcomputerProgramming"></a>
### バージョン管理システム
現在はGitの勉強用に用意したのだが、[生活用途](#computingforMylife)の[Git](#computingforGit)記録で十分だった。  
バージョン管理システムと大見得を切ったため、Gitに限らず、さまざまなツールに手を広げることにする(実際は無理だけど)。  
ブランチ名：git978  

ちなみに、数種類あるのは当然のことで、過去の職場では聞いたこともないツールやある程度有名なツールも使った。  
当然有料なので個人利用できない。
最も、Gitで必要十分であり、これ以上のものは望んでいないかな・・・GUIが使いにくくて仕方ないけど。  

* ツール一覧  
  * Git  
  * Subversion  
  * TortoiseSVN  
    亀で有名。  
  * Concurrent Versions System  
    通称"CVS"と言う。  
  * Microsoft Team Foundation Server  
    私が使ったのは"VSS"時代のだけど。  
  * Mercurial  

</details>

<a name="vimscriptStructuredprogramming"></a>
### [vimScript言語](./vimScript言語/README.md)
独特の癖があり、使いにくい。  
何より、vimscript8バージョンとvimscript9バージョンではだいぶ形式が変わっている。  
例えば、Python2系とPython3系のように・・・。  
できる限りvimscript9で勉強を進めたい。  
正直な話、この言語でアルゴリズムの勉強をする気は無いのだが・・・。  
とりあえず、使っているエディタなので触ってみようと思っただけのこと。  
ブランチ名：vimScript  


## 〆
ニート期間に勉強しているのだが、それはここ最近のことであって、それまでは1日10時間以上ゲームしていることもざらで、1週間で105時間を超えることもあった(1日何時間かけているのか・・・)。  
就職活動に専念しつつ技術力を磨くことに楽しくなってきたため、最近はゲームを封印し、勉強している・・・身についていないけど・・・。  


以上。
