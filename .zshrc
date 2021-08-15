# source all files in ~/.zshrc.d/
RC_D_PATH="$HOME/.zshrc.d"
for f in `ls -ap $RC_D_PATH | grep "^.*[^/]$"`; do
	source $RC_D_PATH/$f
done

# ~/.local/bin
export PATH="$HOME/.local/bin:$PATH"

# colorize ls
alias ls="ls --color=auto"
# sync LSCOLORS and LS_COLORS, by using https://geoff.greer.fm/lscolors/
export LSCOLORS=ExGxcxdxCxegedabagacad
export LS_COLORS='di=1;34:ln=1;36:so=32:pi=33:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

# colorize file completion
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# do not show file type in list of files
setopt no_list_types

PROMPT='%B%F{green}%n@%m%f%b:%B%F{blue}%~%f%b%# '

# https://git-scm.com/book/ja/v2/Appendix-A:-その他の環境でのGit-ZshでGitを使う
# http://tkengo.github.io/blog/2013/05/12/zsh-vcs-info/
# https://mollifier.hatenablog.com/entry/20090814/p1

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "~"
zstyle ':vcs_info:git:*' unstagedstr "*"
zstyle ':vcs_info:*' formats "%F{green}#(%b%c%u)%f"
zstyle ':vcs_info:*' actionformats '%F{green}#(%b%c%u|%a)%f'
RPROMPT='${vcs_info_msg_0_}'

setopt transient_rprompt

# zsh-completion
autoload -Uz compinit
compinit

# histories
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_all_dups

# real-time shared history
setopt inc_append_history
setopt share_history

# peco incremental history search
#function peco-history-selection() {
#    BUFFER=`history -n 1 | tac  | awk '!a[$0]++' | peco`
#    CURSOR=$#BUFFER
#    zle reset-prompt
#}
#
#zle -N peco-history-selection
#bindkey '^R' peco-history-selection

# unbind ^S
stty stop undef

source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# this line MUST be in the last line!
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
