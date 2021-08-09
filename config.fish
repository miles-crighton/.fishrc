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

# Gcloud CLI integration
[ -e /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc ]; and source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

# Starship Prompt (keep at end)
starship init fish | source
