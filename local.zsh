# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(common-aliases jira nyan virtualenv virtualenvwrapper python zsh_reload zsh-syntax-highlighting history-substring-search)
## FIXME Manually load all of the plugins that were defined above
for plugin ($plugins); do
  if [ -f $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh
  elif [ -f $ZSH/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZSH/plugins/$plugin/$plugin.plugin.zsh
  fi
done

ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
DEFAULT_USER=max
JIRA_URL=
REPORTTIME=5
LESS="FRSX"

# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)

export STANDARD_CACHE_DIR="${XDG_CACHE_HOME:-${HOME}/.cache}/pip"
export WHEELHOUSE="${STANDARD_CACHE_DIR}/wheelhouse"
export PIP_FIND_LINKS="file://${WHEELHOUSE}"
export PIP_WHEEL_DIR="${WHEELHOUSE}"

export EDITOR="vim"

zstyle ':completion:*' special-dirs true
unsetopt inc_append_history
setopt append_history
unsetopt share_history # share command history data
setopt no_auto_remove_slash

# These aliases are already declared in common-aliases plugin
#alias rm='rm -i'
#alias cp='cp -i'
#alias mv='mv -i'
alias mc='mc -S modarin256'
