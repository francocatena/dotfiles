c() { cd ~/git/$1; }
_c() { _files -W ~/git -/; }
compdef _c c

# Autocorrect is more annoying than helpful
unsetopt correct

# Aliases
alias vimrc="vim ~/.vimrc"
alias dotfiles_update="cd ~/.dotfiles; rake update; cd -"
alias ccopy="xclip -sel clip"
alias cpaste="xclip -sel clip -o"
alias s="screen"
alias sr="screen -r"
alias r="rails"
alias rs="rails s"
alias rc="rails c"
alias rg="rails g"
