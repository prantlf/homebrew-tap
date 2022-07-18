# Homebrew Tap - prantlf/tap

Tap with [Homebrew] formulae and casks for the following bottles:

* [cutmidel] - Trims a text to a maximum length by putting an ellipsis to the middle of the shortened result.
* [helix-mfa] - Helix MFA Authenticator is a desktop app Provides access to versioned files in Helix Core (Perforce) through a graphical interface.
* [lite-xl] - Lightweight text editor written in Lua. Syntax highlighting you know from VS Code, but comsuming MBs instead of GBs of memory.
* [p4v] - Helix Visual Client (P4V) is a desktop app that provides access to versioned files in Helix Core through a graphical interface. It includes tools for merging and visualizing code evolution.
* [saz-tools] - Tools for SAZ files (Fiddler logs) - parsing, printing and analyzing using a web page. (`sazdump` and `sazserve`) 
* [shortpwd] - Trims the current working directory to a maximum length by putting an ellipsis to the middle of the shortened result.

## Installation

Bottles can be installed directly to the cellar:

    brew install prantlf/tap/cutmidel
    brew install --cask prantlf/tap/helix-mfa
    brew install --cask prantlf/tap/lite-xl
    brew install --cask prantlf/tap/p4v
    brew install prantlf/tap/saz-tools
    brew install prantlf/tap/shortpwd

## Upgrade

A keg with a once poured bottle can be upgraded to a newer version:

    brew upgrade cutmidel
    brew upgrade --cask helix-mfa
    brew upgrade --cask lite-xl
    brew upgrade --cask p4v
    brew upgrade saz-tools
    brew upgrade shortpwd

## Registration

You can tap the repository and drop the prefix `prantlf/tap/` when installing the packages.

    brew tap prantlf/tap
    brew update
    brew install cutmidel
    brew install --cask helix-mfa
    brew install --cask lite-xl
    brew install --cask p4v
    brew install saz-tools
    brew install shortpwd

## Remarks

If you are looking for the [p4] formula or cask, it was removed from here, because it got [accepted to the central Homebrew casks]. You can install and upgrade it like other globally discoverable packages.

## License

Copyright (c) 2020-2021 Ferdinand Prantl

Licensed under the MIT license.

[Homebrew]: https://brew.sh/
[cutmidel]: https://github.com/prantlf/cutmidel
[helix-mfa]: https://www.perforce.com/downloads/helix-mfa-authenticator
[lite-xl]: https://github.com/franko/lite-xl#readme
[p4]: https://www.perforce.com/products/helix-core-apps/command-line-client
[p4v]: https://www.perforce.com/products/helix-core-apps/helix-visual-client-p4v
[accepted to the central Homebrew casks]: https://formulae.brew.sh/cask/p4#default
[saz-tools]: https://github.com/prantlf/saz-tools
[shortpwd]: https://github.com/prantlf/shortpwd
