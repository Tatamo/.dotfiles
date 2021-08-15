#!/bin/bash
for f in `ls -ap | grep "^\..*[^/]$"`
do
	ln -siv $(pwd)/$f ~/
done

ln -siv $(pwd)/.zshrc.d ~/

# 階層の深いファイルのリンクは手動で張る
ln -siv $(pwd)/.ssh/config ~/.ssh/

