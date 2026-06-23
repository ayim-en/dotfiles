## My configuration files, managed with [GNU Stow](https://www.gnu.org/software/stow/).

### Install

```bash
brew install stow
git clone https://github.com/ayim-en/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow */
```

`stow */` links every package at once. Stow won't overwrite existing real files so remove or back up conflicts first!
