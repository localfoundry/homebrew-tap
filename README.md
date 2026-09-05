# LocalFoundry Homebrew Tap

Install tools by [Robin Bially](https://github.com/RobinBially) through Homebrew.
LocalFoundry is the distribution brand; source code, issues and releases stay on
the developer's personal GitHub profile.

## Install search-rotation

```sh
brew install localfoundry/tap/search-rotation
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
| `search-rotation` | Formula · Node.js MCP server | [RobinBially/search-rotation](https://github.com/RobinBially/search-rotation) |

**DotShelf is not available through this tap yet.** Its source repository is
currently private and a public notarized release is still required. No placeholder
cask or unverified download is published. See [DotShelf release requirements](docs/dotshelf.md).

## Update or uninstall

```sh
brew update
brew upgrade search-rotation
brew uninstall search-rotation
```

Uninstalling the formula does not delete your provider keys, settings or history.

## Maintainers

Each formula or cask must reference an existing public release and its actual
SHA-256 checksum. Validate changes with:

```sh
brew style localfoundry/tap/search-rotation
brew audit --strict localfoundry/tap/search-rotation
brew install localfoundry/tap/search-rotation
brew test localfoundry/tap/search-rotation
```

The formula uses the prebuilt release archive and disables npm lifecycle scripts.
Its test initializes a real MCP process and checks all four tools using isolated
configuration, without contacting search providers.

Use GitHub noreply addresses for Git author, committer and tagger metadata.

## License

The tap definitions are MIT-licensed. Each installed project retains its own license.
