# Use c to access project's directory
c() { cd ~/git/$1; }
_c() { _files -W ~/git -/; }
compdef _c c

# Aliases
alias ccopy="xclip -sel clip"
alias cpaste="xclip -sel clip -o"
alias dotfiles_update="cd ~/.dotfiles; rake update; cd -"
alias git='LC_ALL=en_US git'
alias r="rails"
alias rs="rails s"
alias rc="rails c"
alias rg="rails g"
alias vimrc="vim ~/.vimrc"

# Added slash when changing dirs
zstyle ':completion:*' special-dirs true

# Fix reverse search in tmux
bindkey "${terminfo[kcuu1]}" up-line-or-search
bindkey "${terminfo[kcud1]}" down-line-or-search
