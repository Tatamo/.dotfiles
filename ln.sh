for f in `ls -a | grep "^\.[^.]\+"`
do
	[[ "$f" == ".git" ]] && continue
	ln -sfv $(pwd)/$f ~/
done

