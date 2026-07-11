## My configuration files, managed with [GNU Stow](https://www.gnu.org/software/stow/).

<img width="1710" height="1076" alt="dotfiles" src="https://github.com/user-attachments/assets/086ab5b3-5750-4854-80a9-33dffb8b5cb7" />

### Install

```bash
brew install stow
git clone https://github.com/ayim-en/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow */
```

`stow */` links every package at once. Stow won't overwrite existing real files so remove or back up conflicts first!
