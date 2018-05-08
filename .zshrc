ZSH=$HOME/.oh-my-zsh
ZSH_THEME='robbyrussell'
DISABLE_AUTO_UPDATE='true'
COMPLETION_WAITING_DOTS='true'

UNBUNDLED_COMMANDS=(knife)

[[ `tput colors` == '256' ]] || TERM=screen-256color
ZSH_TMUX_AUTOSTART='true'

plugins=(fcatena rbenv archlinux aws bundler docker gem git knife meteor mix npm rails ssh-agent tmux vagrant yarn)

source $ZSH/oh-my-zsh.sh
