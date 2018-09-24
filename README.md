# .dotfiles

## 導入
```bash
$ cd
$ git clone https://github.com/Tatamo/.dotfiles.git
$ cd .dotfiles/
$ bash ln.sh
```

ln.shを実行することによって~/下にdotfilesのシンボリックリンクを作成します
この際にリンクが張られるのは、`.`から始まり2文字目に`.`を含まないような名前の長さが2以上のファイルまたはディレクトリのうち、`.git`を除いたものです

## メモ
### dotfiles導入後にやること
NeoBundleのインストール
http://qiita.com/kazu0620/items/819679ef006d973c6c22

Vimカラースキームの導入
https://github.com/w0ng/vim-hybrid
