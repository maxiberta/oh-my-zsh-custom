# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(common-aliases git-prompt jira nyan virtualenv virtualenvwrapper nvm npm python zsh_reload)
# FIXME Manually load all of the plugins that were defined above
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

export EDITOR="vim"

zstyle ':completion:*' special-dirs true
unsetopt inc_append_history
setopt append_history
unsetopt share_history # share command history data
setopt no_auto_remove_slash

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mc='mc -S modarin256'
