# vim: set syntax=zsh:
#
# $Id: common.zsh 9 2008-06-21 20:10:17Z superbaloo $
#
# update screen caption, use the last argument as hostname
ssh () {
	target=$_
	target=${target//*@/}
	set_title $target
	command ssh $*
}

