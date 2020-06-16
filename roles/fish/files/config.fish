# Configure starship prompt
# https://starship.rs/guide/
starship init fish | source

# Configure jenv
set PATH $HOME/.jenv/bin $PATH
status --is-interactive; and source (jenv init -|psub)
