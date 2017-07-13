for f in `ls -a | grep "^\.[^.]\+"`
do
	ln -sfv $(pwd)/$f ~/
done

