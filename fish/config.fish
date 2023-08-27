# anyenv
set -x PATH ~/.anyenv/bin $PATH
anyenv init - fish | source

# direnv 
set -x EDITOR vim
eval (direnv hook fish)

# volta
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/nakano.yoshiyuki/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

alias tree='tree -a -I "\.DS_Store|\.git|node_modules|cdk.out|venv|package|vendor\/bundle" -N'

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish


# Created by `pipx` on 2023-03-22 02:52:55
set PATH $PATH /Users/nakano.yoshiyuki/.local/bin

# pyenv
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH  $PYENV_ROOT/bin $PATH
pyenv init - | source
