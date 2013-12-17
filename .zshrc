ZSH=$HOME/.oh-my-zsh
ZSH_THEME='robbyrussell'
DISABLE_AUTO_UPDATE='true'
COMPLETION_WAITING_DOTS='true'

# Automatically start tmux
[[ `tput colors` == '256' ]] || TERM=screen-256color
ZSH_TMUX_AUTOSTART='true'

# Oh My ZSH plugins
plugins=(rbenv bundler gem git rails tmux vagrant fcatena)

# Load Oh My ZSH
source $ZSH/oh-my-zsh.sh
