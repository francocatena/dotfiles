ZSH=$HOME/.oh-my-zsh
ZSH_THEME="philips"
DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Automatically start tmux
[[ `tput colors` == "256" ]] || TERM=screen-256color
ZSH_TMUX_AUTOSTART="true"

# Oh My ZSH plugins
plugins=(bundler gem git tmux rails4 fcatena)

source $ZSH/oh-my-zsh.sh

# Rbenv path overide
export PATH="$HOME/.rbenv/bin:$PATH"
[ ! -f "$HOME/.rbenv/bin/rbenv" ] || eval "$(rbenv init -)"
