for f in `ls -ap | grep "^\..*[^/]$"`
do
	ln -siv $(pwd)/$f ~/
done

