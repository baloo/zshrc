# vim: set syntax=zsh:
#
# $Id: Archlinux.zsh 16 2008-07-26 17:47:43Z superbaloo $

alias pmS='pacman -S'
alias pmy='pacman -Sy'
alias pmu='pacman -Su'

[[ -x $(which pacman-color) ]] && alias pacman="pacman-color"

