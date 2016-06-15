export PATH=$HOME/src/homebrew/bin:$PATH
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxegedabagacad
export HOMEBREW_GITHUB_API_TOKEN=f055c47417cfdeeb6cff656c3d17142879befe89
export PATH=~/bin:${PATH}

alias ls='ls -GFh'
alias ls='ls -G'
alias ll='ls -Gl'
alias top='top -o cpu'
alias start_mongo='mongod --config /Users/grundaj/src/homebrew/etc/mongod.conf'
alias rstudio='open -a Rstudio'


bedsize () { cat $@ | awk -F'\t' 'BEGIN{SUM=0}{SUM +=$3-$2 }END{print SUM}'; }
sortBed () { sort -k 1,1 -k2,2n $@; }
pe() { source ~/envs/$@/bin/activate; }
lspe() { ls ~/envs; }

PS1='[\u@\[\e[1;38;5;71m\]\h\[\e[0m\]:\[\e[1;38;5;69m\]\w\[\e[0m\]]\$ '

pe jg
