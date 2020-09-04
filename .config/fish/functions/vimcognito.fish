function vimcognito -d "Private vim mode"
    # -i NONE - no config file
    # -u DEFAULTS - default init
    # -U DEFAULTS - default GUI init
    vim -i NONE -u DEFAULTS -U DEFAULTS -n --noplugin --cmd 'set noswapfile' --cmd 'set nobackup' --cmd 'set nowritebackup' --cmd 'set noundofile' $argv
end
