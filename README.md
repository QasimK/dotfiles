# My dotfiles

Setup on a new machine:

    cd ~
    git clone --no-checkout git@github.com:QasimK/dotfiles.git dotfiles
    mv dotfiles/.git .
    rmdir dotfiles
    git checkout -f master

**Further configuration is required (or extra features are included). Please
see individual programs below.**

Requires further installation of:
* gvim (desktop) or vim (server)

Managed by a simple git repository in `$HOME`. This is possible by doing two
things:

* A `.gitignore` that covers everything with `*`.
* Setting `GIT_CEILING_DIRECTORIES=$HOME` with `.pam_environment`.
  (Note, this works for every shell except when using `lxc-attach`!)

Host-specific configuration is possible with branches and rebasing.

*TODO: Secure repository with GPG.*

## Bash

Requires further configuration:

    echo 'source "$HOME/.config/bash/config.sh"' >> ~/.bashrc

## Fish

Includes bespoke commands - view at `~/.config/fish/functions`.

This includes integrating other optional tools with fish.

This does not include common user paths, e.g.:

    set -U fish_user_paths ~/.local/bin $fish_user_paths

Includes local configuration at `~/.config/fish/conf.d/local.fish`.

## Git

Requires further local configuration at `~/.config/git/config.local`:

    git config --file ~/.config/git/config.local user.email noreply@QasimK.io
    git config --file ~/.config/git/config.local user.name QasimK

This is useful to allow machines/VMs/containers to use a corporate identity globally.

Enables git-rerere:
https://medium.com/@porteneuve/fix-conflicts-only-once-with-git-rerere-7d116b2cec67

Includes bespoke aliases - view with `git alias`.

Includes bespoke customisiation - `GIT_ALLOW_MASTER=y` will allow pushing to
master.

## PDB

Includes bespoke commands - view with `view ~/.pdbrc`.

## SSH

Requires further configuration:

    mkdir -p ~/.cache/ssh/controlmasters
    chmod -R 0700 ~/.cache/ssh

Includes local configuration option at `~/.ssh/config.local`.

## Vim

Includes bespoke commands - view with `view ~/.config/vim/vimrc`.
