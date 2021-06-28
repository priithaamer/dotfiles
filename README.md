Start with

```bash
curl -sL https://raw.githubusercontent.com/priithaamer/dotfiles/master/install.sh | bash
```

## Set fish as default shell

```bash
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
```
