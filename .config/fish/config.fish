alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no

if status is-interactive
    # Commands to run in interactive sessions can go here
end
