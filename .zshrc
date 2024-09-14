stty -ixon # Important, enable keys like ctrl+S

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'argument: %d'
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' prompt '%e err'
zstyle :compinstall filename '/home/julien/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
setopt APPEND_HISTORY
setopt SHARE_HISTORY

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY

bindkey -e

bindkey '\e[A' history-search-backward #up arrow
bindkey '\e[B' history-search-forward  #down arrow
bindkey '\e[5~' backward-word          #page up
bindkey '\e[1;5D' backward-word        #Ctrl left
bindkey '\e[6~' forward-word           #page down
bindkey '\e[1;5C' forward-word         #ctrl left
bindkey '\e[H' beginning-of-line       #debut
bindkey '\e[F' end-of-line             #fin
bindkey '' backward-delete-word      #ctrl delete

sudo-at-begin () {
	if [ "${BUFFER:0:5}" = "sudo " ]; then
		zle backward-char -n 5
		BUFFER=${BUFFER:5}
	else
		BUFFER="sudo "$BUFFER
		zle forward-char -n 5
	fi
}
zle -N sudo-at-begin
bindkey '\eOP' sudo-at-begin
bindkey -r ''
bindkey '' sudo-at-begin
sudo-previous () {
	zle history-search-backward
	zle sudo-at-begin

}
zle -N sudo-previous
bindkey '\e[1;5A' sudo-previous


# End of lines configured by zsh-newuser-install

# alias
alias sway="~/script/init-sway"
alias ls="eza --icons auto"

#env
export XKB_DEFAULT_LAYOUT=fr
export PROMPT='%(!.%F{red}.%F{green})[%F{cyan}%5~%(?.. %F{red}%?)%(!.%F{red}.%F{green})]%f%(!.%F{red}#.%F{green}>)%f'
#wayland
export MOZ_ENABLE_WAYLAND=1
export MOZ_DBUS_REMOTE=1

export QT_QPA_PLATFORM="wayland;xcb"
export QT_QPA_PLATFORM_PLUGIN_PATH=/usr/lib/qt/plugins
export CLUTTER_BACKEND=wayland
export SDL_VIDEODRIVER=wayland
export GTK_THEME=Adwaita:dark
export GDK_BACKEND=wayland

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
if [[ $TERM = "alacritty" ]]; then # Load modules only in alacritt y, not in TTY
	source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
	[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fi

alias deezer="deezer-enhanced --enable-features=UseOzonePlatform --ozone-platform=wayland"
alias fastfetch="fastfetch -l arch"
alias gccsafe='gcc -g -Wall -Wextra -std=c99 -fsanitize=address,undefined'
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/home/jvj/.opam/opam-init/init.zsh' ]] || source '/home/jvj/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration
