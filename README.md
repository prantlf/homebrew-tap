# Homebrew Tap - prantlf/tap

Tap with [Homebrew] formulae and casks for the following bottles:

* [cutmidel] - Trims a text to a maximum length by putting an ellipsis to the middle of the shortened result.
* [jsonlint2] - JSON/JSONC/JSON5 validator and pretty-printer.
* [helix-mfa] - Helix MFA Authenticator is a desktop app Provides access to versioned files in Helix Core (Perforce) through a graphical interface.
* [newchanges] - Creates or updates the changelog file from commit messages.
* [shortpwd] - Trims the current working directory to a maximum length by putting an ellipsis to the middle of the shortened result.
* [update-formula] - Updates version numbers and SHA-256 hashes in Homebrew formula files for GitHub releases.
* [vp] - Helps with development, installation and maintenance of VPM packages.
* [yaml2json] - Converts YAML input to JSON/JSON5 output.

Casks:

* [lite-xl] - Lightweight text editor written in Lua. Syntax highlighting you know from VS Code, but comsuming MBs instead of GBs of memory.
* [saz-tools] - Tools for SAZ files (Fiddler logs) - parsing, printing and analyzing using a web page. (`sazdump` and `sazserve`) 

## Installation

Bottles can be installed directly to the cellar:

    brew install prantlf/tap/<name>
    brew install --cask prantlf/tap/<name>

## Upgrade

A keg with a once poured bottle can be upgraded to a newer version:

    brew upgrade <name>
    brew upgrade --cask <name>

## Registration

You can tap the repository and drop the prefix `prantlf/tap/` when installing the packages.

    brew tap prantlf/tap
    brew update
    brew install <name>
    brew install --cask <name>

## Remarks

If you are looking for the [p4] formula or cask, it was removed from here, because it got [accepted to the central Homebrew casks]. You can install and upgrade it like other globally discoverable packages.

If you are looking for the [p4v] cask, it was removed from here, because it is [available from the central Homebrew casks]. You can install and upgrade it like other globally discoverable packages.

## License

Copyright (c) 2020-2025 Ferdinand Prantl

Licensed under the MIT license.

[Homebrew]: https://brew.sh/
[cutmidel]: https://github.com/prantlf/cutmidel
[jsonlint2]: https://github.com/prantlf/v-jsonlint
[helix-mfa]: https://www.perforce.com/downloads/helix-mfa-authenticator
[lite-xl]: https://github.com/franko/lite-xl#readme
[newchanges]: https://github.com/prantlf/v-newchanges
[p4]: https://www.perforce.com/products/helix-core-apps/command-line-client
[p4v]: https://www.perforce.com/products/helix-core-apps/helix-visual-client-p4v
[accepted to the central Homebrew casks]: https://formulae.brew.sh/cask/p4#default
[available from the central Homebrew casks]: https://formulae.brew.sh/cask/p4v#default
[saz-tools]: https://github.com/prantlf/saz-tools
[shortpwd]: https://github.com/prantlf/shortpwd
[update-formula]: https://github.com/prantlf/update-formula
[vp]: https://github.com/prantlf/vp
[yaml2json]: https://github.com/prantlf/v-yaml2json
