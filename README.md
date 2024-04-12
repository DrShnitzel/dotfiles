# Dotfiles

Dotfiles use a bare git repository. We are storing git files in `.dotfiles` and using an alias to not show the repo in the prompt and avoid confusion.

## Installation on a new machine

```bash
git clone --bare git@github.com:DrShnitzel/dotfiles.git $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

## Adding new files to the repo

```bash
dotfiles add ~/my/file/path
```

## Adding changes from all existing files

```bash
dotfiles add -u
```