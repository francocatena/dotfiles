ZSH=$HOME/.oh-my-zsh
ZSH_THEME='robbyrussell'

COMPLETION_WAITING_DOTS='true'

DISABLE_AUTO_UPDATE='true'
DISABLE_UNTRACKED_FILES_DIRTY='true'

UNBUNDLED_COMMANDS=(knife)

[[ `tput colors` == '256' ]] || TERM=screen-256color
ZSH_TMUX_AUTOSTART='true'

# Better Docker completion, remove once in a while to check if it's fixed
zstyle ':omz:plugins:docker' legacy-completion yes

plugins=(
  fcatena
  rbenv
  archlinux
  aws
  brew
  bundler
  docker
  docker-compose
  dotenv
  gcloud
  gem
  git
  knife
  kubectl
  mix
  npm
  rails
  ssh-agent
  terraform
  thefuck
  timer
  tmux
  vagrant
  yarn
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
