# DotShelf

[DotShelf](https://github.com/RobinBially/DotShelf) is a native editor for recurring
configuration files on a Mac. Source code, issues and releases stay on Robin Bially's
personal profile; LocalFoundry provides the Homebrew distribution.

## Install

```sh
brew install --cask localfoundry/tap/dotshelf
```

Requires macOS 14 Sonoma or later. The Universal app supports Apple Silicon and Intel.
The cask downloads a versioned GitHub release and verifies its SHA-256 checksum.
The app is Developer-ID signed, notarized by Apple and includes a stapled ticket.

If you already installed DotShelf manually in Applications, move that app aside
before installing through Homebrew. Your configuration files and app preferences
are separate from the app bundle and are retained.

## Update and uninstall

```sh
brew update
brew upgrade --cask dotshelf
brew uninstall --cask dotshelf
```

Uninstalling removes the app, not your configuration files, backups or preferences.

## Maintaining the cask

DotShelf's `scripts/release.sh` builds and signs the app, submits it to Apple,
staples the accepted ticket, verifies it and generates `Casks/dotshelf.rb` from
the final ZIP. Publish that verified release before updating this tap.

```sh
brew style localfoundry/tap/dotshelf
brew audit --cask --strict --online localfoundry/tap/dotshelf
brew install --cask localfoundry/tap/dotshelf
```

Never use a placeholder checksum or point the cask at an unpublished draft.
