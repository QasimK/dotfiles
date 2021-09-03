set -q XDG_CONFIG_HOME || set XDG_CONFIG_HOME $HOME/.config
set --global --export VIMINIT 'let $MYVIMRC="'"$XDG_CONFIG_HOME"'/vim/vimrc" | source $MYVIMRC'
