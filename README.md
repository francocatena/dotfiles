# Franco Catena Dot Files

These are configuration files to set up a system the way I like it =)

## Some assumptions

- You have a relatively up to date Ruby version (>= 1.9)
- You have installed zsh, tmux and git (sudo apt-get install zsh tmux git-core)

## Installation

Run the following commands in your terminal. It will prompt you before it does anything destructive. Check out the [Rakefile](https://github.com/francocatena/dotfiles/blob/master/Rakefile) to see exactly what it does.

```terminal
git clone git://github.com/francocatena/dotfiles ~/.dotfiles
cd ~/.dotfiles
git submodule init
git submodule update
rake install
```

After installing, open a new terminal window to see the effects (in some cases you must close all of your active sessions).
