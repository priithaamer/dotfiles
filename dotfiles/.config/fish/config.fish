set -x GOPATH $HOME/Developer/go
set -x PATH $PATH ./node_modules/.bin

fish_add_path /opt/homebrew/bin
fish_add_path /Users/priit/.cargo/bin
fish_add_path $GOPATH/bin
fish_add_path $HOME/.local/bin

set fish_greeting

set -g fish_color_autosuggestion "yellow"

set -x USE_GKE_GCLOUD_AUTH_PLUGIN "True"

# Git aliases
alias gs="git status"
alias gp="git pull"
alias gpu="git push"
alias ga="git add"
alias gco="git checkout"
alias gcm="git commit"

# Yarn aliases
alias y="yarn"
alias ya="yarn add"
alias yad="yarn add --dev"
alias yt="yarn test"
alias ytc="yarn typecheck"
alias yb="yarn build"

if test -e ~/.local/share/fish/exports.fish
  source ~/.local/share/fish/exports.fish
end

if test -e /opt/homebrew/bin/zoxide
  zoxide init fish | source
  # "j" is better for zoxide as it stands for jumping
  alias j=z
end

if test -e /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
  source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
end

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
