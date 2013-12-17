# Use c to access project's directory
c() { cd ~/git/$1; }
_c() { _files -W ~/git -/; }
compdef _c c

# Aliases
alias dotfiles_update='cd ~/.dotfiles; rake update; cd -'
alias r='rails'
alias vimconfig='vim ~/.vimrc'
alias zshconfig='vim ~/.zshrc'

# OS specific aliases
if [[ $(uname) == 'Linux' ]] ; then
  alias ccopy='xclip -sel clip'
  alias cpaste='xclip -sel clip -o'
elif [[ $(uname) == 'Darwin' ]]; then
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
