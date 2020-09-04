# (Wayland) Desktop Toolkit

## mpv + youtube-dl

Includes local configuration option at `~/.config/mpv/local.conf`.

Recommends further installation of:

* atomicparsley (with youtube-dl)

## Firefox

Requires further configuration:

    ln -s ~/.config/firefox/user.js .mozilla/firefox/XXX.default-release/user.js
    ln -s ~/.config/firefox/search.json.mozlz4 .mozilla/firefox/XXX.default-release/search.json.mozlz4

## Sway

Recommended dependencies:

* swayidle
* swaylock
* swaybg
* waybar
    * otf-font-awesome
* jq
* termite
* mako
* rofi
* python
* acpilight
    * usermod -aG video qasim
* grim
* slurp
* wl-clipboard
* pulseaudio
    * pavucontrol
* playerctl
* fish
    * pkgfile (command-not-found hook)
* dex
* xdg-user-dirs
    * Run xdg-user-dirs-update, modify ~/.config/user-dirs.dirs
* aur:wob
* aur:redshift-wlr-gamma-control
    * Includes location configuration at `~/.config/redshift.conf`
* qt5-wayland
* glfw-wayland
* glew-wayland
