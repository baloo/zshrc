# Alias
#
# $Id: OpenBSD.zsh 14 2008-06-22 07:31:09Z superbaloo $
 
alias date-rfc822="date '+%a, %d %b %Y %X %z'"

source $HOME/.zsh/rc.os/prompt.zsh
source $HOME/.zsh/rc.os/common.zsh

# Check for GNULS
if [ -x $(which gnuls) ] ; then
	eval `dircolors $HOME/.zsh/misc/dircolors.rc`
	alias ls='gnuls --color'
	zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi
