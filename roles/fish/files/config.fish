# Configure starship prompt
# https://starship.rs/guide/
starship init fish | source

# Configure jenv
# https://github.com/jenv/jenv#11-installing-jenv
set -x PATH $HOME/.jenv/bin $PATH
status --is-interactive; and source (jenv init -|psub)

# Configure fnm
# https://github.com/Schniz/fnm#manually
fnm env --multi | source

# Configure rust/cargo
set -x PATH $HOME/.cargo/bin $PATH
set -x RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src

# Add ~/bin to PATH
contains $fish_user_paths ~/bin; or set -Ua fish_user_paths ~/bin
