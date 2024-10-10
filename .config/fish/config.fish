set -U fish_greeting # Remove greeting

# OSX only
if test (uname) = Darwin
    eval "$(/opt/homebrew/bin/brew shellenv)"
    set -U fish_user_paths /opt/homebrew/opt/python@3.12/libexec/bin $fish_user_paths

    set -U fish_user_paths /Users/drschnitzel/.local/bin $fish_user_paths
    set -U fish_user_paths /Users/drschnitzel/go/bin $fish_user_paths
    set -U fish_user_paths /Users/drschnitzel/.local/share/gem/ruby/3.3.0/bin $fish_user_paths
end

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no

starship init fish | source

status --is-interactive; and rbenv init - fish | source

set -x EDITOR hx

if [ -f $HOME/.config/fish/git.fish ]
    source $HOME/.config/fish/git.fish
end

alias rubocop-fix="bundle exec --gemfile=gemfiles/rubocop.gemfile rubocop --config .rubocop.master.yml --fix (git diff --name-only HEAD~1)"

set -x PATH $HOME/.rbenv/bin $PATH
