alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no

if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

status --is-interactive; and rbenv init - fish | source

set -x EDITOR nvim

if [ -f $HOME/.config/fish/git.fish ]
    source $HOME/.config/fish/git.fish
end
