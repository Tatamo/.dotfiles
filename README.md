# .dotfiles

## 導入
```bash
$ cd
$ git clone https://github.com/Tatamo/.dotfiles.git
$ cd .dotfiles/
$ bash ln.sh
```

ln.shを実行することによって~/下にdotfilesのシンボリックリンクを作成します  
ln.shを実行した際に/home内の既存のdotfileと衝突した場合、もともとのファイルは消去されます

## メモ
### dotfiles導入後にやること
NeoBundleのインストール
http://qiita.com/kazu0620/items/819679ef006d973c6c22

Vimカラースキームの導入
https://github.com/w0ng/vim-hybrid
