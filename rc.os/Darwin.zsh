# Alias
#
# $Id: Darwin.zsh 9 2008-06-21 20:10:17Z superbaloo $
 
alias date-rfc822="date '+%a, %d %b %Y %X %z'"

source $HOME/.zsh/rc.os/common.zsh

PATH=$HOME/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/ccs/bin:/usr/sfw/bin:/usr/openwin/bin:/usr/local/bin:/usr/local/sbin

MANPATH=/usr/man:/opt/local/man

# Extra tools
for tool in $HOME/tools/*(-/DN) ; do
   if [ -d $tool/bin ] ; then
      PATH=$PATH:$tool/bin
   fi
done

PATH=$PATH:/opt/local/bin

if [[ -r /sw ]]; then
	. /sw/bin/init.sh
fi

export PATH MANPATH

source $HOME/.zsh/rc.os/prompt.zsh
# Check for gnuls
if [ -x "$(which gls)" ] ; then
	eval `gdircolors $HOME/.zsh/misc/dircolors.rc`
	alias ls='gls --color'
	zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi

# 
[ -x "$(which gtar)" ] && alias tar=gtar

if [[ -x "$(which vim)" ]]; then
	export EDITOR=vim
else
	export EDITOR=vi
fi

# For SSH, override TERM to VT100 before ssh if set to screen
#ssh () {
#   target=$_
#   target=${target//*@/}
#   set_title $target
#
#	if [[ $TERM == "screen" ]] ; then
#	   TERM=vt100 command ssh $*
#	else
#		command ssh $*
#	fi
#}
