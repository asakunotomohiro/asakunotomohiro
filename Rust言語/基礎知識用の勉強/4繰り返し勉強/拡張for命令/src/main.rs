fn main() {
    println!("繰り返し⇒基本構造例：拡張for命令");

	//let asakunoArray = [20211023, 20211024, 20211025, 20211026, ];
	//    ^^^^^^^^^^^^ help: convert the identifier to snake case: `asakuno_array`
	let asakuno_array = [20211023, 20211024, 20211025, 20211026, ];
	let tomohiro_vec = vec![20211023, 20211024, 20211025, 20211026, ];
	let asakunotomohiro_vec = vec![20211023, 20211024, 20211025, 20211026, ];

	for value in asakuno_array {
		println!("asakuno_array配列{}", value);
//					asakuno_array配列20211023
//					asakuno_array配列20211024
//					asakuno_array配列20211025
//					asakuno_array配列20211026
	}

//	for value in tomohiro_vec {
//		println!("tomohiro_vecベクター{}", value);
////					tomohiro_vecベクター20211023
////					tomohiro_vecベクター20211024
////					tomohiro_vecベクター20211025
////					tomohiro_vecベクター20211026
//	}
//			この処理は、以下の処理と同時に実行できない。

	for value in &tomohiro_vec {
		println!("tomohiro_vecベクター{}", value);
//						tomohiro_vecベクター20211023
//						tomohiro_vecベクター20211024
//						tomohiro_vecベクター20211025
//						tomohiro_vecベクター20211026
	}


	// 要は、&を付けない場合、配列内容が全て排出され、空の配列から中身を出そうとしたため、上記でエラーになったと言うことなのだろう。
	//	そのため、参照であれば問題なく、以下の値渡し(?)の処理が無事に行われたと言うことだろう。
	//	&の付け外しで結果が変わる理由が分からない。&は文字列型だよね？
	for value in tomohiro_vec {
		println!("tomohiro_vecベクター{}", value);
//					tomohiro_vecベクター20211023
//					tomohiro_vecベクター20211024
//					tomohiro_vecベクター20211025
//					tomohiro_vecベクター20211026
		// let asakuno: i32 = value;
		//     ^^^^^^^ help: if this is intentional, prefix it with an underscore: `_asakuno`
		//	valueは、参照値だった？
		//let asakuno: i32 = *value;	// 参照外し。
		// error[E0614]: type `{integer}` cannot be dereferenced
		//let asakuno: i32 = &value;	// 参照外し。
		// error[E0308]: mismatched types
		let asakuno: i32 = *&value;	// 参照外し。
		println!("asakuno：{}", asakuno);
				// 出力結果：
//							asakuno：20211023
//							asakuno：20211024
//							asakuno：20211025
//							asakuno：20211026
	}

	// 以下、ベクターでのイテレータ利用
	for value in asakunotomohiro_vec.iter() {
		println!("asakunotomohiro_vecイテレータ{}", value);
//					asakunotomohiro_vecイテレータ20211023
//					asakunotomohiro_vecイテレータ20211024
//					asakunotomohiro_vecイテレータ20211025
//					asakunotomohiro_vecイテレータ20211026
		//let asakuno: i32 = value;
		//		error[E0308]: mismatched types
		let asakuno: i32 = *value;	// ここでも参照外しが必要。
		println!("asakuno：{}", asakuno);
//					asakuno：20211023
//					asakuno：20211024
//					asakuno：20211025
//					asakuno：20211026
	}

	for (ii, value) in asakunotomohiro_vec.iter().enumerate() {
		println!("asakunotomohiro_vecイテレータ{}番目：{}", ii, value);
//					asakunotomohiro_vecイテレータ0番目：20211023
//					asakunotomohiro_vecイテレータ1番目：20211024
//					asakunotomohiro_vecイテレータ2番目：20211025
//					asakunotomohiro_vecイテレータ3番目：20211026
	}

	println!("以上。");
}

// vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=rust noexpandtab:
