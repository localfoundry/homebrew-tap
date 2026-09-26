# Homebrew tap

Install tools by [Robin Bially](https://github.com/robin-bially) through Homebrew.
Source code, issues and release notes live in the same account.

## Install DotShelf

A native Mac app for editing dotfiles and tool settings, with JSON validation,
syntax highlighting and automatic backups. Requires macOS 14 or later.

```sh
brew install --cask robin-bially/tap/dotshelf
```

The Universal app supports Apple Silicon and Intel, is signed with Developer ID
and notarized by Apple. [Screenshots and features](https://github.com/robin-bially/DotShelf)
· [Installation details](docs/dotshelf.md)

## Install SMARTastic

A native Mac app for checking SSD/HDD health and tracking daily write volume.
Includes 7/30/90-day charts, SMART diagnostics and JSON reports. Requires macOS 14
or later; Homebrew also installs smartmontools.

```sh
brew install --cask robin-bially/tap/smartastic
```

The Universal app supports Apple Silicon and Intel, is signed with Developer ID
and notarized by Apple. [Screenshots and features](https://github.com/robin-bially/SMARTastic)
· [Installation details](docs/smartastic.md)

## Install search-rotation

```sh
brew install robin-bially/tap/search-rotation
```

Homebrew installs Node.js 24 and the versioned release package. The executable is
`search-rotation`:

```sh
search-rotation --http --open
```

To connect an MCP client over stdio, use `search-rotation` as its command with no
arguments. If the client does not inherit your shell's PATH, use the absolute
path printed by:

```sh
echo "$(brew --prefix)/bin/search-rotation"
```

Provider keys and settings are managed in the local dashboard. Existing
`~/.config/search-rotation` configuration is retained. Restart your MCP client
after an upgrade so it loads the new server version.

## Available packages

| Package | Type | Source |
|---|---|---|
| `smartastic` | Cask · Native macOS drive health monitor | [robin-bially/SMARTastic](https://github.com/robin-bially/SMARTastic) |
| `dotshelf` | Cask · Native macOS config editor | [robin-bially/DotShelf](https://github.com/robin-bially/DotShelf) |
| `search-rotation` | Formula · Node.js MCP server | [robin-bially/search-rotation-mcp](https://github.com/robin-bially/search-rotation-mcp) |

## Update or uninstall

```sh
brew update
brew upgrade search-rotation
brew upgrade --cask dotshelf

# Remove either tool:
brew uninstall search-rotation
brew uninstall --cask dotshelf
```

Uninstalling search-rotation does not delete provider keys, settings or history.
Uninstalling DotShelf removes the app; your configuration files, backups and app preferences are retained.

## Maintainers

Each formula or cask must reference an existing public release and its actual
SHA-256 checksum. Validate changes with:

```sh
brew style robin-bially/tap/search-rotation robin-bially/tap/dotshelf
brew audit --strict robin-bially/tap/search-rotation
brew audit --cask --strict --online robin-bially/tap/dotshelf
brew install robin-bially/tap/search-rotation
brew test robin-bially/tap/search-rotation
```

The formula uses the prebuilt release archive and disables npm lifecycle scripts.
Its test initializes a real MCP process and checks all four tools using isolated
configuration, without contacting search providers.

Use GitHub noreply addresses for Git author, committer and tagger metadata.

## License

The tap definitions are MIT-licensed. Each installed project retains its own license.
