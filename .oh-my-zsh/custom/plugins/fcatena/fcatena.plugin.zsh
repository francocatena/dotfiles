# Use c to access project's directory
c() { cd ~/git/$1; }
_c() { _files -W ~/git -/; }
compdef _c c

# Move a file to a .bak
bak() { mv $1 $1.bak; }

# CD and then list
lcd() { cd $1; ls; }

# Aliases
alias dfu='cd ~/.dotfiles && rake update && cd -'
alias lh='ls -lh'
alias knife='chef exec knife'
alias r='rails'
alias rtm='rake test:models'
alias rtc='rake test:controllers'
alias rti='rake test:integration'
alias tmuxconfig='vim ~/.tmux.conf'
alias vimconfig='vim ~/.vimrc'
alias zshconfig='vim ~/.zshrc'
alias npm-exec='PATH=$(npm bin):$PATH'

# OS specific stuff
if [[ $(uname) == 'Linux' ]] ; then
  export EDITOR='vim'

  alias ccopy='xsel -b'
  alias cpaste='xsel -b -o'
elif [[ $(uname) == 'Darwin' ]]; then
  export PATH="/usr/local/bin:/opt/homebrew/opt/openssl@1.1/bin:$PATH"
  export GPG_TTY=$(tty)

  alias ccopy='pbcopy'
  alias cpaste='pbpaste'
  alias ls='gls --color=auto'
  alias dircolors='gdircolors'
fi

# Added slash when changing dirs
zstyle ':completion:*' special-dirs true

# Fix reverse search in tmux
bindkey "${terminfo[kcuu1]}" up-line-or-search
bindkey "${terminfo[kcud1]}" down-line-or-search

# Load zmv
autoload -U zmv

# Disable flow control commands (keeps C-s from freezing everything)
stty start undef
stty stop undef

# Add solarized dircolors
eval `dircolors $HOME/.terminal/dircolors-solarized/dircolors.256dark`
