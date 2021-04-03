# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#
# ZSH テーマ
#
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_CUSTOM_OS_ICON="echo "
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_os_icon dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time battery)

# time
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_TIME_BACKGROUND='white'

# battery
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='none'
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='001'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='none'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='076'
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='none'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='076'
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='none'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='003'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD=15
POWERLEVEL9K_BATTERY_VERBOSE=false

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init - zsh)"

export PATH=$HOME/.nodebrew/current/bin:$PATH

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# zshで no match found の対策
setopt +o nomatch

#
# 履歴
#
HISTFILE=~/.zsh_history
# メモリ上に保存される件数（検索できる件数）
HISTSIZE=100000

# ファイルに保存される件数
SAVEHIST=100000

# rootは履歴を残さないようにする
if [ $UID = 0 ]; then
  unset HISTFILE
  SAVEHIST=0
fi

# 履歴検索
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# 履歴を複数の端末で共有する
setopt share_history

# 直前と同じコマンドの場合は履歴に追加しない
setopt hist_ignore_dups

# 重複するコマンドは古い法を削除する
setopt hist_ignore_all_dups

# 履歴ファイルにzsh の開始・終了時刻を記録する
setopt extended_history
