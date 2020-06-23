# Configure starship prompt
# https://starship.rs/guide/
starship init fish | source

# Configure jenv
# https://github.com/jenv/jenv#11-installing-jenv
set PATH $HOME/.jenv/bin $PATH
status --is-interactive; and source (jenv init -|psub)

# Configure fnm
# https://github.com/Schniz/fnm#manually
fnm env --multi | source

# Add ~/bin to PATH
contains $fish_user_paths ~/bin; or set -Ua fish_user_paths ~/bin
