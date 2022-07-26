# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/williamh/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-autosuggestions)


ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export PATH=$PATH:$HOME

# You may need to manually set your language environment
export LANG=en_US.UTF-8

alias gco='git checkout'
alias gm='git commit -m'
alias grbi='git rebase -i'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'
alias gloga='git log --oneline --decorate --graph --all'
alias floga='git fetch --all && git log --oneline --decorate --graph --all'
alias flogawatch='watch -d -c -n 5 "git fetch --all && git log --oneline --decorate --graph --all --color"'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gl='git pull'
alias gfa='git fetch --all'
alias ga='git add'
alias gs='git status'
alias gb="git branch --sort=-committerdate --format='%(committerdate:short)  %(refname:short) %(authorname:short)'"
alias gsl="git stash list"
alias gsp="git stash pop"
alias gss="git stash save"
alias gr="git-recent"
alias glc="git reset --soft HEAD~1"

alias da='direnv allow'

alias nsf='nx serve frontend'
alias nbf='nx build frontend'
alias nba='nx build admin-dashboard'
alias nlf='nx lint frontend'
alias ntf='nx e2e frontend-e2e'
alias ntu='nx test ui'
alias nsa='nx serve admin-dashboard'
alias nsb='SESSION_MAX_AGE=720 nx serve backend'
alias nssb='nx serve ui:storybook'
alias nbsb='npm run build ui:build-storybook'
alias nlsb='npm run lint ui:build-storybook'
alias nstart='npx next start dist/apps/frontend -p 3000'

alias npmis='npm i --ignore-scripts --no-fund --no-audit'

alias c='clear'
alias cod='code .'

# alias stack="~/projects/mansa/stack.sh"
alias stack='./stack.sh'
alias sb="stack build"
alias sl="stack logs"
alias slf="stack logs -f"
alias ss="stack stop"
alias sd="stack down"
alias su="stack up --no-deps"
alias sub="stack up --no-deps --build"
alias sud="stack up -d --no-deps"
alias sudb="stack up -d --no-deps --build"
alias subd="stack up -d --no-deps --build"

# usage: stack up --no-deps $STACK_FRONT_E2E
export STACK_BACK_E2E="mansa-deps-prod-node mansa-base-node database rabbitmq redis finances-refresh mailing-service business-service business-search-service files-service loan-service solaris-service contract-service credit-chain-service lemonway-bridge scoring ocr admin-api"
export STACK_FRONT_E2E="$STACK_BACK_E2E backend admin-dashboard"
export STACK_FULL="$STACK_FRONT_E2E frontend"

eval "$(starship init zsh)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(direnv hook zsh)"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /Users/williamh/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# GCP
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"

# ASDF
source /opt/homebrew/opt/asdf/libexec/asdf.sh

#### Mac OS M1 chips bug ####
#### https://linguinecode.com/post/how-to-fix-m1-mac-puppeteer-chromium-arm64-bug ####
#### https://github.com/puppeteer/puppeteer/issues/6622#issuecomment-749069120 ####
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=/Applications/Contents/MacOS/Chromium

# GPG
export GPG_TTY=$(tty)

export NODE_OPTIONS=--max-old-space-size=4096

#### ALWAYS KEEP ME AT THE END OF FILE ####

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
