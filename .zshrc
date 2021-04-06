eval "$(/opt/homebrew/bin/brew shellenv)"

# Some aliases to manage this file
alias reload="source ~/.zshrc"
alias customize="code ~/.zshrc"

# Git completion
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
fpath=(~/.zsh/functions $fpath)
autoload -Uz compinit && compinit

# Up and down search 
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Path addition 
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

eval "$(starship init zsh)"
alias config='/usr/bin/git --git-dir=/Users/paganotoni/.cfg/ --work-tree=/Users/paganotoni'
