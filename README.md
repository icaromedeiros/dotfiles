# Disclaimer

This is for my own personal use.
Some stuff might not work for you but it is shared here because it's important :)

Some of my thoughts on the topic are [in my blog]
(http://www.icaromedeiros.com.br/dotfiles-what-they-are-why-you-need-one-where-they-live-how-to-do-it.html).

# Before everything

Download dotfiles-master:
`https://github.com/icaromedeiros/dotfiles/archive/master.zip`

Update software:

```sh
sudo softwareupdate -ia --verbose
```

Brew without Xcode, please.

```sh
sudo xcode-select --switch /Library/Developer/CommandLineTools
```

# Install brew

To be safe, follow instructions from `brew.sh` or use:

```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
