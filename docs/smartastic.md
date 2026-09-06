# SMARTastic

```sh
brew install --cask localfoundry/tap/smartastic
open /Applications/SMARTastic.app
```

Requires macOS 14 Sonoma or later. The app is Universal (Apple Silicon and Intel),
signed with Developer ID and notarized by Apple. The smartmontools dependency is
installed by Homebrew; no bundled privileged helper is required.

SMART data availability depends on the drive, controller and USB adapter. An
unsupported external drive remains visible with its access diagnostic.

Daily write history begins with the first measurement. Keep the app running with
automatic refresh enabled; Command-W minimizes the window and collection continues.
Command-Q quits. History stays in
`~/Library/Application Support/SMARTastic/write-history.json` and is retained for
90 days. Historical calendar-day writes cannot be reconstructed from lifetime SMART
counters. Missing intervals are explained in the chart.

## Update or remove

```sh
brew update
brew upgrade --cask smartastic
brew uninstall --cask smartastic
```

Uninstall removes the app but retains preferences and local history.

[Source, documentation and screenshots](https://github.com/RobinBially/SMARTastic)
· [Releases](https://github.com/RobinBially/SMARTastic/releases)
