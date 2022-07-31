# Created by newuser for 5.9
# alias
alias vi='nvim'
alias config='/usr/bin/git --git-dir=/home/yef/.cfg/ --work-tree=/home/yef'
#
autoload -U compinit; compinit
setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index
_comp_options+=(globdots) # With hidden files
#theme
fpath=(~/.config/zsh/prompt $fpath)
autoload -Uz prompt_purification_setup; prompt_purification_setup
source ~/.config/zsh/zsh-snap/znap.zsh
znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-autosuggestions
#znap source zsh-users/zsh-syntax-highlighting
