for f in `ls -a | grep "^\.[^.]\+"`
do
	[[ "$f" == ".git" ]] && continue
	ln -siv $(pwd)/$f ~/
done

