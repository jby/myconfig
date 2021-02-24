set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
alias brew_check='brew update && brew outdated && brew outdated --cask'
alias brewu='brew update && brew upgrade && brew upgrade --cask && brew cleanup && brew doctor'
alias df='/usr/local/bin/gdf -h'
alias du='/usr/local/bin/gdu -h'
alias emacs='emacs -nw'
alias ls='ls -FG'
alias l='ls -lFG'
alias la='ls -lFGa'
alias m='less -iM'
set -g fish_user_paths "/usr/local/sbin:/opt/homebrew/bin:/opt/homebrew/sbin" $fish_user_paths

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

test -e {$HOME}/src/github/fish-ssh-agent/init.fish; and source {$HOME}/src/github/fish-ssh-agent/init.fish
