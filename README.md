# Franco Catena Dot Files

These are configuration files to set up a system the way I like it =)

## Some assumptions

- You have a relatively up to date Ruby version (>= 1.9)
- You have installed **zsh**, **tmux** and **git** (optionally **xsel**)

In an Archlinux based OS should be

```console
$ sudo pacman -S zsh tmux git xsel
```

And in a Debian based OS

```console
$ sudo apt-get install zsh tmux git xsel
```

## Installation

Run the following commands in your terminal. It will prompt you before anything
destructive. Check out the [Rakefile][] to see exactly what it does.

[Rakefile]: https://github.com/francocatena/dotfiles/blob/master/Rakefile "Rakefile"

```console
$ git clone git://github.com/francocatena/dotfiles ~/.dotfiles
$ cd ~/.dotfiles
$ git submodule update --init
$ rake install
```

After installing, open a new terminal window to see the effects
(in some cases you must close all of your active sessions)
