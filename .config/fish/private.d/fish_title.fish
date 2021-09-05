function fish_title
    set netns (ip netns identify)
    if test -z "$netns"
        set netns_title ""
    else
        set netns_title "($netns) "
    end

    echo "(private) $netns_title"(set -q argv[1] && echo $argv[1] || status current-command) (__fish_pwd)
end
