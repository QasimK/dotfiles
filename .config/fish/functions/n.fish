function n --description 'support nnn quit and change directory'
    # The default behaviour is to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, export NNN_TMPFILE after the call to nnn
    if test -n "$XDG_CONFIG_HOME"
        set -x NNN_TMPFILE "$XDG_CONFIG_HOME/nnn/.lastd"
    else
        set -x NNN_TMPFILE "$HOME/.config/nnn/.lastd"
    end

    # Open text files in $VISUAL
    set -x NNN_USE_EDITOR 1

    # Requires trash-cli
    set -x NNN_TRASH 1

    # Requires xdg-utils
    set -x NNN_OPENER mimeopen

    set -x NNN_BMS 'o:~/Downloads;d:~/Documents;v:~/Videos;p:~/Pictures;f:~/Documents/Resilio/Fustra;c:~/Code/me'
    nnn $argv

    if test -e $NNN_TMPFILE
        source $NNN_TMPFILE
        rm $NNN_TMPFILE
    end
end
