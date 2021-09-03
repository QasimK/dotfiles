function n --wraps nnn --description 'customised nnn'
    # Do not allow nested nnn
    if test -n "$NNNLVL"
        if [ (expr $NNNLVL + 0) -ge 1 ]
            echo "nnn is already running"
            return
        end
    end

    # The default behaviour is to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, remove the "-x" in "set -x":
    if test -n "$XDG_CONFIG_HOME"
        set NNN_TMPFILE "$XDG_CONFIG_HOME/nnn/.lastd"
    else
        set NNN_TMPFILE "$HOME/.config/nnn/.lastd"
    end

    # Requires trash-cli
    set -x NNN_TRASH 1

    nnn -adeEo $argv

    if test -e $NNN_TMPFILE
        source $NNN_TMPFILE
        rm $NNN_TMPFILE
    end
end
