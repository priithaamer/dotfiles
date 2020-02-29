set -x PATH $PATH ./node_modules/.bin /Users/priit/Library/Android/sdk/platform-tools

# I have it here so that node-rdkafka for will build
set -x CPPFLAGS -I/usr/local/opt/openssl/include
set -x LDFLAGS -L/usr/local/opt/openssl/lib

if test -e ~/.local/share/fish/exports.fish
  source ~/.local/share/fish/exports.fish
end
