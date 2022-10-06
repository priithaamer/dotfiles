set -x PATH /opt/homebrew/bin $PATH ./node_modules/.bin

# I have it here so that node-rdkafka for will build
set -x CPPFLAGS -I/opt/homebrew/opt/openssl/include
set -x LDFLAGS -L/opt/homebrew/opt/openssl/lib

set -x GOPATH $HOME/Source/go
set -x PATH $GOPATH/bin $PATH

set -g fish_color_autosuggestion "yellow"


if test -e ~/.local/share/fish/exports.fish
  source ~/.local/share/fish/exports.fish
end

if test -e /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
  source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
end
