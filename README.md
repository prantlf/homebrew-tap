# prantlf/tap

Tap with [Homebrew] formulae for the following bottles:

* [cutmidel] - Trims a text to a maximum length by putting an ellipsis to the middle of the shortened result.
* [saz-tools] - Tools for SAZ files (Fiddler logs) - parsing, printing and analyzing using a web page. (`sazdump` and `sazserve`) 
* [shortpwd] - Trims the current working directory to a maximum length by putting an ellipsis to the middle of the shortened result.

## Installation

Bottles can be installed directly to the cellar:

    brew install prantlf/tap/cutmidel
    brew install prantlf/tap/saz-tools
    brew install prantlf/tap/shortpwd

## Upgrade

A keg with a once poured bottle can be upgraded to a newer version:

    brew upgrade cutmidel
    brew upgrade saz-tools
    brew upgrade shortpwd

## Registration

You can tap the repository and drop the prefix `prantlf/tap/` when installing the packages.

    brew tap prantlf/tap
    brew update
    brew install cutmidel
    brew install saz-tools
    brew install shortpwd

## License

Copyright (c) 2020 Ferdinand Prantl

Licensed under the MIT license.

[Homebrew]: https://brew.sh/
[cutmidel]: https://github.com/prantlf/cutmidel
[saz-tools]: https://github.com/prantlf/saz-tools
[shortpwd]: https://github.com/prantlf/shortpwd
