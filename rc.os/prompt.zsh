# Prompt 
#
# $Id: prompt.zsh 9 2008-06-21 20:10:17Z superbaloo $
autoload -U colors
colors

# Format
date_format="%H:%M:%S"

date="%B%{$fg[$delimiter_color]%}(%b%{$fg[$date_color]%}%D{$date_format}%B%{$fg[$delimiter_color]%})"

host="%B%{$fg[$delimiter_color]%}[%b%{$fg[$user_color]%}%n%{$reset_color%} %B%{$fg[$delimiter_color]%}@%b %{$fg[$host_color]%}%m%B%{$fg[$delimiter_color]%}]"

cpath="%B%{$fg[$delimiter_color]%}[%{$fg[$path_color]%}%/%{$fg[$delimiter_color]%}]"
end="%{$reset_color%}"

#PS1="$date$end $host$end $cpath
#$end%% "

