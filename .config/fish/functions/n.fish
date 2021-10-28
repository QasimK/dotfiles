function n --wraps nnn --description 'customised nnn'
    # Do not allow nested nnn
    if test -n "$NNNLVL"
        if [ (expr $NNNLVL + 0) -ge 1 ]
            echo "nnn is already running"
            return
        end
    end

    # To always cd on quit (rather than on ^G), do "set -x"
    # Uncomment in next release
    # if test -n "$TMPDIR"
    #     set NNN_TMPFILE "$TMPDIR/nnn-$USER.lastd"
    # else
    #     set NNN_TMPFILE "/tmp/nnn-$USER.lastd"
    # end
    set NNN_TMPFILE "$XDG_CONFIG_HOME/nnn/.lastd"

    if test -n "$TMPDIR"
        set -x NNN_SEL "$TMPDIR/nnn-$USER.selection"
    else
        set -x NNN_SEL "/tmp/nnn-$USER.selection"
    end

    # Requires trash-cli
    set -x NNN_TRASH 1

    nnn -adeEo $argv

    if test -e $NNN_TMPFILE
        source $NNN_TMPFILE
        rm $NNN_TMPFILE
    end
end
