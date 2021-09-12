// 以下、今回のプロジェクト作成コマンド。
//      $ ll
//      total 0
//      drwxr-xr-x  3 asakunotomohiro  staff  96  9 12 13:29 実行済み/
//      $ cargo new 変数
//      warning: the name `変数` contains non-ASCII characters
//      Support for non-ASCII crate names is experimental and only valid on the nightly toolchain.
//           Created binary (application) `変数` package
//      $ ll
//      total 0
//      drwxr-xr-x  4 asakunotomohiro  staff  128  9 12 14:41 変数/
//      drwxr-xr-x  3 asakunotomohiro  staff   96  9 12 13:29 実行済み/
//      $
// 日本語名が使えるとは思わなかった。

// 以下の引数と戻り値の型は宣言が必要であり、戻り値の型は処理内の型と一致させる必要がある。
//fn funcAdd( x : i32, y : i32 ) -> i32 {
//    // 処理に32ビット版の型を使って戻り値にしているため、戻り値の型を32ビット版にする必要がある。
//    x + y
//}
//		ちなみに、丸括弧の中が引数で、"-> 数字"の部分が戻り値の型宣言になる。
//	そもそも関数を作れない(エラーになる)。
//		warning: function is never used: `funcAdd`

fn main() {
    let asakunoint32 = 20210912;
//    asakunoint32 = 20210912;	// error[E0384]: cannot assign twice to immutable variable `asakunoint32`
						// 変数の書き換えは出来ない。

    let asakunoi32 : i32 = 20210912;
    let asakunoi64 : i64 = 20210912;

    let asakunostr = "asakuno";
//    let asakunoAstr : &str = "朝来野智博";
    let asakunoastr : &str = "朝来野智博";

    println!("asakunoint32：{}", asakunoint32);	// asakunoint32：20210912
    println!("asakunoi32  ：{}", asakunoi32);	// asakunoi32  ：20210912
    println!("asakunoi64  ：{}", asakunoi64);	// asakunoi64  ：20210912
//    let retfuncadd;	// warning: variable `retfuncadd` is assigned to, but never used
//    retfuncadd = funcAdd(20210912, 20210913);
//    let retfuncadd : i32 = 0;	// 同じエラーになる。
//    retfuncadd = funcAdd(20210912, 20210913);	// どうやって関数を使う(呼び出す)？
    println!("asakunostr  ：{}", asakunostr);	// asakunostr  ：asakuno
//    println!("asakunoAstr ：{}", asakunoAstr);	// warning: variable `asakunoAstr` should have a snake case name
    println!("asakunoastr ：{}", asakunoastr);	// asakunoastr ：朝来野智博


    // 浮動小数点数の扱い。
    let asakunof = 100.234;
    let asakunof64 : f64 = 100.234;
    println!("asakunof  ：{}", asakunof);	// asakunof  ：100.234
    println!("asakunof64：{}", asakunof64);	// asakunof64：100.234


    // 真偽値(論理値型)
    let asakunotrue = true;
    let asakunofalse = false;
    println!("asakunotrue  ：{}", asakunotrue);		// asakunotrue  ：true
    println!("asakunofalse ：{}", asakunofalse);	// asakunofalse ：false


    // 1文字。
    let a = 'a';
    let s : char = 's';
    let k = 'ķ';
    let cat = '😻';
//    let dog = 'dog';	// error: character literal may only contain one codepoint	1文字ではないのが原因だろう。
    println!("a  ：{}", a);		// a  ：a
    println!("s  ：{}", s);		// s  ：s
    println!("k  ：{}", k);		// k  ：ķ
    println!("cat：{}", cat);	// cat：😻
//    println!("dog：{}", dog);	//

    // 文字列&str型
    let asakunostr = "asakuno string.";
    let tomohirostr = "tomohiro string.";
    println!("文字列  ：{}", asakunostr);	// 文字列  ：asakuno string.
    println!("文字列  ：{}", tomohirostr);	// 文字列  ：tomohiro string.
//    let a_t_str = asakunoastr + " " + tomohirostr;	// error[E0369]: cannot add `&str` to `&str`
    let a_t_str = format!("{}と{}を連結", asakunoastr, tomohirostr);	// 
    println!("a_t_str ：{}", a_t_str);	// a_t_str ：朝来野智博とtomohiro string.を連結

    // 文字列String型
    let asakunostring = String::from("String型生成変数。");
    let asakunostring2 = String::from("String2型生成変数。");
    let tomohirostring = String::from("tomohiro生成変数。");
    println!("asakunostring ：{}", asakunostring);	// asakunostring ：String型生成変数。
    println!("tomohirostring：{}", tomohirostring);	// tomohirostring：tomohiro生成変数。
//    let a_t_string = asakunostring + tomohirostring;	// error[E0308]: mismatched types
    let a_t_string = asakunostring + &tomohirostring;	// 2つ目以降の変数名の先頭に&記号を付ける(借用の印)。
    println!("a_t_string ：{}", a_t_string);	// a_t_string ：String型生成変数。tomohiro生成変数。
//    a_t_string = format!("{}format関数挟む。{}", asakunostring, tomohirostring);	// error[E0384]: cannot assign twice to immutable variable `a_t_string`
//				変数を使い回せない？
//    let atstring = format!("{}format関数挟む。{}", asakunostring, tomohirostring);	// error[E0382]: borrow of moved value: `asakunostring`
//				一度他の連結をした場合、それを使い回せない？
//				借用のあとでは使えないようだな。
//89 |     let atstring = format!("{}format関数挟む。{}", asakunostring, tomohirostring);    // 
//   |                                                    ^^^^^^^^^^^^^ value borrowed here after move
//    println!("a_t_string ：{}", a_t_string);	// a_t_string ：String型生成変数。tomohiro生成変数。
    let atstring = format!("{}format関数挟む。{}", asakunostring2, tomohirostring);	// 
    println!("atstring ：{}", atstring);	// atstring ：String2型生成変数。format関数挟む。tomohiro生成変数。


    // タプル型
    let asakunotuple = ("asakuno", 20210912);
    println!("1つ目：{}\t2つ目：{}", asakunotuple.0, asakunotuple.1);	// 1つ目：asakuno	2つ目：20210912
		// タプル内の要素を呼び出すには、番号を使う必要がある。見にくいため、使いやすさを優先せずに、構造体を使った方が良いだろう。


    // 配列型
    let asakunoarray = ["朝", "来", "野", "智", "博"];
//    println!("最初の1文字目：{}\t最後の文字：{}", asakunoarray[0], asakunoarray[-1]);	// error[E0277]: the trait bound `usize: Neg` is not satisfied
    let ii = 0;
    println!("最初の1文字目：{}\t最後の文字：{}", asakunoarray[ii], asakunoarray[4]);	// 最初の1文字目：朝	最後の文字：博



    println!("以上。");
}
