# alias ls='ls --color=auto'
# Set prompt
PS1='[\u@\h \W]\$ '

export HISTFILESIZE=99999
export HISTSIZE=99999

# Don't include commands that start with a space
# Don't include duplicate commands; also erase duplicates from history
# (Note: this refers to sequential duplicates)
export HISTCONTROL=ignoreboth:erasedups

# Don't include these specific commands in the history
export HISTIGNORE="ls:exit:[bf]g:jobs:history:history -n"

export HISTTIMEFORMAT='%Y-%m-%d %H:%M.%S | '

# Save multiline commands in one line to allow for easier editing
shopt -s cmdhist

# When using history substitution, allow the user to edit the result
shopt -s histverify

# Append to the history file rather than overwriting
shopt -s histappend

# Append to the history file after every command
# Note: use history -n to merge in changes from other bash instances
PROMPT_COMMAND="history -a; ${PROMPT_COMMAND:-:}"

# Check and update window size (LINES, COLUMNS) after each command
shopt -s checkwinsize

# Colours
if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b)"
fi

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Configure vim's config file location
# (It is not possible to set this .pam_environment due to the use of spaces)
export VIMINIT='let $MYVIMRC="'"${XDG_CONFIG_HOME:-$HOME/.config}"'/vim/vimrc" | source $MYVIMRC'

# Add local executables to $PATH (temporarily until .pam_environment is configured)

# My Scripts
export PATH="$HOME/.local/bin:$HOME/s:${PATH}"
# Rust tools
export PATH="$HOME/.rustup:$HOME/.cargo/bin:${PATH}"
# RVM
export PATH="$HOME/.rvm/bin:${PATH}"

# Aliases
source "${XDG_CONFIG_HOME:-$HOME/.config}/bash/aliases.sh"
