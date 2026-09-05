# DotShelf: pending public release

DotShelf will be distributed as a Homebrew cask once its release is ready.

Before adding `Casks/dotshelf.rb`:

1. Publish a Universal macOS app signed with Developer ID and notarized by Apple.
2. Staple and validate the notarization ticket, then package the final ZIP.
3. Make that ZIP accessible without GitHub authentication.
4. Generate the cask from the final archive, using its actual version and SHA-256.
5. Check the cask and perform a real install from this tap.

The DotShelf project's existing release tooling generates `Casks/dotshelf.rb`
after successful signing and notarization. Copy that generated definition here
after the corresponding release has been published. No placeholder or `:no_check`
checksum should be used.

The intended cask token is `localfoundry/tap/dotshelf`; it is not installable today.
The source project stays on Robin Bially's personal profile.
