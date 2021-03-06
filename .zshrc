ZSH=$HOME/.oh-my-zsh
ZSH_THEME='robbyrussell'

COMPLETION_WAITING_DOTS='true'

DISABLE_AUTO_UPDATE='true'
DISABLE_UNTRACKED_FILES_DIRTY='true'

UNBUNDLED_COMMANDS=(knife)

[[ `tput colors` == '256' ]] || TERM=screen-256color
ZSH_TMUX_AUTOSTART='true'

plugins=(
  fcatena
  rbenv
  archlinux
  aws
  bundler
  docker
  docker-compose
  gcloud
  gem
  git
  helm
  knife
  kubectl
  mix
  npm
  rails
  terraform
  thefuck
  timer
  tmux
  vagrant
  yarn
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
