set --global --export EDITOR /usr/bin/vim
set --global --export VISUAL /usr/bin/vim

# Ignore dotfiles .git repo
set --global --export GIT_CEILING_DIRECTORIES "$HOME"

# XDG Base Directories
set --global --export XDG_CACHE_HOME  "$HOME/.cache"
set --global --export XDG_CONFIG_DIRS /etc/xdg
set --global --export XDG_CONFIG_HOME "$HOME/.config"
set --global --export XDG_DATA_DIRS   /usr/local/share:/usr/share
set --global --export XDG_DATA_HOME   "$HOME/.local/share"

# XDG User Directories
set --global --export XDG_MUSIC_DIR    "$HOME/Music"
set --global --export XDG_PICTURES_DIR "$HOME/Pictures"
set --global --export XDG_VIDEOS_DIR   "$HOME/Videos"

# Conform to XDG Base Directories spec
set --global --export GNUPGHOME       "$XDG_DATA_HOME/gnupg"
set --global --export INPUTRC         "$XDG_CONFIG_HOME/readline/inputrc"
set --global --export SQLITE_HISTORY  "$XDG_DATA_HOME/sqlite/history"

# Disable accessibility service
set --global --export NO_AT_BRIDGE 1

