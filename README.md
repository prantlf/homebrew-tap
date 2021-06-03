# Homebrew Tap - prantlf/tap

Tap with [Homebrew] formulae and casks for the following bottles:

* [cutmidel] - Trims a text to a maximum length by putting an ellipsis to the middle of the shortened result.
* [lite-xl] - Lightweight text editor written in Lua. Syntax highlighting you know from VS Code, but comsuming MBs instead of GBs of memory.
* [p4] - Helix (Perforce) Command-Line Client (P4) provides administrators and heavyweight users complete control over the system, custom reports, automation, and facilitates cross-platform consistency.
* [saz-tools] - Tools for SAZ files (Fiddler logs) - parsing, printing and analyzing using a web page. (`sazdump` and `sazserve`) 
* [shortpwd] - Trims the current working directory to a maximum length by putting an ellipsis to the middle of the shortened result.

## Installation

Bottles can be installed directly to the cellar:

    brew install prantlf/tap/cutmidel
    brew install --cask prantlf/tap/lite-xl
    brew install --cask prantlf/tap/p4
    brew install prantlf/tap/saz-tools
    brew install prantlf/tap/shortpwd

## Upgrade

A keg with a once poured bottle can be upgraded to a newer version:

    brew upgrade cutmidel
    brew upgrade --cask lite-xl
    brew upgrade --cask p4
    brew upgrade saz-tools
    brew upgrade shortpwd

## Registration

You can tap the repository and drop the prefix `prantlf/tap/` when installing the packages.

    brew tap prantlf/tap
    brew update
    brew install cutmidel
    brew install --cask lite-xl
    brew install --cask p4
    brew install saz-tools
    brew install shortpwd

## License

Copyright (c) 2020-2021 Ferdinand Prantl

Licensed under the MIT license.

[Homebrew]: https://brew.sh/
[cutmidel]: https://github.com/prantlf/cutmidel
[lite-xl]: https://github.com/franko/lite-xl#readme
[p4]: https://www.perforce.com/products/helix-core-apps/command-line-client
[saz-tools]: https://github.com/prantlf/saz-tools
[shortpwd]: https://github.com/prantlf/shortpwd
