# 
# Bruno Bonfils, <asyd@asyd.net>
# Written since summer 2001
#
# $Id: zshrc 17 2008-10-03 07:18:28Z superbaloo $
#

# My functions (don't forget to modify fpath before call compinit !!)
fpath=($HOME/.zsh/functions $fpath)

# in order to have many completion function run comptinstall !

autoload -U zutil
autoload -U compinit
autoload -U complist

# zgitinit and prompt_wunjo_setup must be somewhere in your $fpath, see README for more.
#
setopt promptsubst
#
# # Load the prompt theme system
autoload -U promptinit
promptinit
#
# # Use the wunjo prompt theme
prompt wunjo


# Activation
compinit

[[ -f ~/.zsh/zshrc.local.early ]] && source ~/.zsh/zshrc.local.early

local os host

# Set default umask to 027, can be override by host specific resource file
umask 027

# per host resource file
host=${$(hostname)//.*/}
if [ -f "$HOME/.zsh/rc.host/${host}.zsh" ] ; then
	 source "$HOME/.zsh/rc.host/${host}.zsh"
else
	source "$HOME/.zsh/rc.host/default.zsh"
fi

# per OS resource file
os=$(uname)
[ -f "$HOME/.zsh/rc.os/${os}.zsh" ] && source "$HOME/.zsh/rc.os/${os}.zsh"

# Global resource files
for file in $HOME/.zsh/rc/*.rc; do
	source $file
done

# Local file
[[ -f ~/.zsh/rc.local ]] && source ~/.zsh/rc.local
[[ -f ~/.zsh/zshrc.local ]] && source ~/.zsh/zshrc.local

