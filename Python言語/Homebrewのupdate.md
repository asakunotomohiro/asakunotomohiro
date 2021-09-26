# Python言語
ここは、プログラミング言語のPython言語を勉強するブランチになる。  
しかし、このファイルはPythonに全く関係ない。  
備忘録として残す。  

以下、PythonをHomebrewでインストールしたとき、Homebrewのバージョンが古い警告を受けた。
```text
==> Homebrew was updated to version 3.2.12
The changelog can be found at:
  https://github.com/Homebrew/brew/releases/tag/3.2.12
Warning: python@3.9 3.9.7 is already installed and up-to-date.
To reinstall 3.9.7, run:
  brew reinstall python@3.9
```

以下、アップデート実施。
```terminal
$ brew update
Updated 1 tap (homebrew/cask).
==> Updated Casks
liclipse

You have 1 outdated formula installed.
You can upgrade it with brew upgrade
or list it with brew outdated.
$ echo $?
0
$ brew --version
Homebrew 3.2.12-9-gb19fcef
Homebrew/homebrew-core (git revision 4ecddb9b76d; last commit 2021-09-15)
Homebrew/homebrew-cask (git revision b29106b8fb; last commit 2021-09-15)
$
```


以上。
<!-- vim: set ts=4 sts=4 sw=4 tw=0 ff=unix fenc=utf-8 ft=markdown expandtab: -->
