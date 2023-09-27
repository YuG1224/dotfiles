# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# prezto
autoload -Uz promptinit
promptinit
prompt kylewest

# brew
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

LISTMAX=1000

# if [ -r ~/.zshrc ]; then echo 'export GPG_TTY=$(tty)' >> ~/.zshrc; \
#   else echo 'export GPG_TTY=$(tty)' >> ~/.zprofile; fi
export GPG_TTY=$(tty)

# deno
export PATH="$HOME/.deno/bin:$PATH"

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# alias
alias ls='eza'
alias lsa='eza -a'
alias ll='eza -lbF --time-style=full-iso --git --color-scale'
alias lla='eza -lbFa --time-style=full-iso --git --color-scale'
alias date='gdate'

# # speciality views
# alias lS='exa -1'
# alias lt='exa --tree --level=2'

alias cat='bat'

alias h='history 1'
alias b='brew'
alias g='git'
alias n='npm'
alias y='yarn'
alias v='volta'
alias lh='lefthook'

alias gsw='(){
  git fetch origin $1 && git switch -fC $1 origin/$1
}'
export PATH="/opt/homebrew/opt/go@1.18/bin:$PATH"

source ~/.zsh_plugins/gibo-completion.zsh
source ~/.zsh_plugins/lefthook-completion.zsh
