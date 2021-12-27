/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle install --file "./home/Brewfile"
gem install homesick
homesick clone yorhodes/dotfiles
homesick link dotfiles
