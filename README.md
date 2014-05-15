dotfiles
--------

1. Clone repo

2. Edit `subl ~/.bashrc`

'export PATH=/usr/local/bin:$PATH
source ~/dotfiles/aliases.sh'


'subl ~/.bash_profile'

'export PATH=/usr/local/bin:$PATH
eval "$(rbenv init -)"
eval "$(rbenv init -)"


. /usr/local/etc/bash_completion.d/git-completion.bash
. /usr/local/etc/bash_completion.d/git-prompt.sh


### Prompt

RED="\[\e[1;31m\]"
LIGHT_GRAY="\[\e[1;35m\]"
COLOR_NONE="\[\e[0m\]"

# Return the prompt symbol to use, colorized based on the return value of the
# previous command.
set_prompt_symbol() {
  if test $1 -eq 0 ; then
    PROMPT_SYMBOL="●"
  else
    PROMPT_SYMBOL="${RED}█ $1${COLOR_NONE}"
  fi
}

set_bash_prompt() {
  set_prompt_symbol $?

  PS1="\n${LIGHT_GRAY}● \A \w \$(__git_ps1)${COLOR_NONE}\n${PROMPT_SYMBOL} "
  PS2="… > "
}

PROMPT_COMMAND=set_bash_prompt

source ~/.bashrc
'
