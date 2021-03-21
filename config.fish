for file in aliases prompt
    source ~/.config/fish/inc/$file.fish
end

# OS-specific customizations
set osname (uname)
source ~/.config/fish/inc/mac.fish

# pipenv completion
command -v pipenv >/dev/null; and eval (pipenv --completion)

# iTerm2 integration
[ -e ~/.iterm2_shell_integration.fish ]; and source ~/.iterm2_shell_integration.fish