set -x GOPATH $HOME/Developer/go
set -x MODULAR_HOME $HOME/.modular
set -x PATH /opt/homebrew/bin /Users/priit/.cargo/bin $MODULAR_HOME/pkg/packages.modular.com_mojo/bin $GOPATH/bin $PATH ./node_modules/.bin /opt/homebrew/opt/node@18/bin
# fish_add_path /opt/homebrew/bin
# fish_add_path /Users/priit/.cargo/bin
# fish_add_path ./node_modules/.bin
# fish_add_path /opt/homebrew/opt/node@18/bin

set fish_greeting

# I have it here so that node-rdkafka for will build
set -x CPPFLAGS -I/opt/homebrew/opt/openssl/include
set -x LDFLAGS -L/opt/homebrew/opt/openssl/lib
set -gx LDFLAGS "-L/opt/homebrew/opt/node@18/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/node@18/include"

set -g fish_color_autosuggestion "yellow"

set -x USE_GKE_GCLOUD_AUTH_PLUGIN "True"

if test -e ~/.local/share/fish/exports.fish
  source ~/.local/share/fish/exports.fish
end

if test -e /opt/homebrew/bin/zoxide
  zoxide init fish | source
end

if test -e /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
  source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
end
