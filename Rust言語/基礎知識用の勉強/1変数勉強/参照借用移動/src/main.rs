// $ cargo new 参照借用移動
// warning: the name `参照借用移動` contains non-ASCII characters
// Support for non-ASCII crate names is experimental and only valid on the nightly toolchain.
//      Created binary (application) `参照借用移動` package
// $


fn main() {
    println!("Hello, world!");

    let numx = 20210912;
    let numy;
    println!("numx：{}", numx);	// numx：20210912
//    println!("numy：{}", numy);	// error[E0282]: type annotations needed
    numy = numx;	// 変数値をコピーした。
    println!("numy：{}", numy);	// numy：20210912


    // 借用と移動(所有権の移動)。
    let strx = String::from("朝来野智博");
    let stry;
    println!("strx：{}", strx);	// strx：朝来野智博
    stry = strx;	// 変数値を移動した(コピーではない)。
    println!("stry：{}", stry);	// stry：朝来野智博
//    println!("strx：{}", strx);	// error[E0382]: borrow of moved value: `strx`
					// 移動しているため、strx変数の中身がない状態で表示させようとしているため、エラーになった。
					// strxの所有権をprintln!が借用して使うつもりだったが、借りるものがなく、中身がないのでエラーになった。
							// 19 |     let strx = String::from("朝来野智博");
							//    |         ---- move occurs because `strx` has type `String`, which does not implement the `Copy` trait
							// ...
							// 22 |     stry = strx;
							//    |            ---- value moved here
							// 23 |     println!("stry：{}", stry);    // stry：朝来野智博
							// 24 |     println!("strx：{}", strx);    // 
							//    |                          ^^^^ value borrowed here after move
							// 
							// error: aborting due to previous error
							// 
							// For more information about this error, try `rustc --explain E0382`.

    let funccall_string_length = String::from("asakuno");
    let len = string_length( funccall_string_length );
    println!("len is {}", len);	// len is 7
//    println!("元の文字列表示：{}", funccall_string_length);	// error[E0382]: borrow of moved value: `funccall_string_length`
										// エラーになったのは、関数の引数に変数の中身を移動してしまったため、今回表示させようとした変数値は空っぽになっいるため、エラーになった。

    // 以下、参照型として変数を渡すようにした。
    let funccall_string_length_kai = String::from("朝来野");
    let len = string_length_kai( &funccall_string_length_kai );
    println!("len is {}", len);	// len is 9
    println!("元の文字列表示：{}", funccall_string_length_kai);	// 元の文字列表示：朝来野

        // 型付けのない関数であれば渡せると思ったが、そもそも関数宣言の時点で型付けしていない関数を作れなかった。
//    let len = string_length_tmp( &funccall_string_length );
//    println!("元の文字列表示：{}", funccall_string_length);	// 

        // 値渡しの関数に、参照渡しをしたが、エラーになった(当たり前か)。
//    let len = string_length( &funccall_string_length );	// error[E0308]: mismatched types


    println!("以上。");
}

fn string_length( s : String ) -> usize {
    let length = s.len();
    length
}

// 関数の引数は型付けが必要。
//		fn string_length_tmp( s ) -> usize {
//		    let length = s.len();
//		    length
//		}

// 以下、参照型の引数を受け取るように変更した。
//fn string_length_Kai( s : &String ) -> usize {
//		warning: function `string_length_Kai` should have a snake case name
//		関数の名前にまで厳しい言語なのか。
fn string_length_kai( s : &String ) -> usize {
    // 上記の関数を改変した。
    let length = s.len();
    length
}
