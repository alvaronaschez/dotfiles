#!/usr/bin/zsh

if [ -f ~/.local/share/fonts/HackNerdFontMono-Regular.ttf ]; then;
  echo 'font already installed'
  return 0
fi

## install Hack nerd-font
# github.com/ryanoasis/nerd-fonts
# apt-get install -yq fonts-hack # this doesn't come with glyphs
# just backup ~/.local/share/fonts folder?
curl -fLo ~/.local/share/fonts/HackNerdFontMono-Regular.ttf --create-dirs https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/Hack/Regular/HackNerdFontMono-Regular.ttf
curl -fLo ~/.local/share/fonts/HackNerdFontMono-Bold.ttf --create-dirs https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/Hack/Bold/HackNerdFontMono-Bold.ttf
curl -fLo ~/.local/share/fonts/HackNerdFontMono-Italic.ttf --create-dirs https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/Hack/Italic/HackNerdFontMono-Italic.ttf
curl -fLo ~/.local/share/fonts/HackNerdFontMono-BoldItalic.ttf --create-dirs https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/Hack/BoldItalic/HackNerdFontMono-BoldItalic.ttf

