#History
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

#Prompt
#export COLORTERM=truecolor
autoload -Uz vcs_info
zstyle ':vcs_info:git*' formats "%s:(%b)"
precmd() {
  vcs_info
}

setopt PROMPT_SUBST
PROMPT='[%t]%n@%M:(%3~)$ '
RPROMPT='${vcs_info_msg_0_:+$vcs_info_msg_0_}'


