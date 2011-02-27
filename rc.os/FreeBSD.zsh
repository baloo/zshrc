# Alias
#
# $Id: FreeBSD.zsh 9 2008-06-21 20:10:17Z superbaloo $
 
alias date-rfc822="date '+%a, %d %b %Y %X %z'"

source $HOME/.zsh/rc.os/prompt.zsh
source $HOME/.zsh/rc.os/common.zsh

# Check for GNULS
if [ -x $(which gnuls) ] ; then
	eval `dircolors $HOME/.zsh/misc/dircolors.rc`
	alias ls='gnuls --color'
	zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi
