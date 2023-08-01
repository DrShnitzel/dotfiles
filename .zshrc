source $HOME/zshrc/oh-my-zsh.sh
source $HOME/zshrc/aliases.sh
source $HOME/zshrc/golang.sh
source $HOME/zshrc/ruby.sh
source $HOME/zshrc/kayzen.sh

CUSTOM_CONFIG=$HOME/.custom_zshrc.sh
if [[ -f $CUSTOM_CONFIG ]];then
    source $CUSTOM_CONFIG
fi
