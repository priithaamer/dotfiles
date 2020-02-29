Start with

```bash
curl -sL https://raw.githubusercontent.com/priithaamer/dotfiles/master/install.sh | bash
```

## Set fish as default shell

```bash
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
```
