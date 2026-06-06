# homebrew-loomings

Homebrew tap for [Loomings](https://tiagojct.eu/loomings) — a markdown writing app.

## Install

```sh
brew install --cask tiagojct/loomings/loomings
```

Or tap first:

```sh
brew tap tiagojct/loomings
brew install --cask loomings
```

## Update

```sh
brew upgrade --cask loomings
```

## Uninstall

```sh
brew uninstall --cask loomings
brew untap tiagojct/loomings
```

## Notes

- **Apple Silicon only** at the moment. Intel macOS builds are queued in CI; the cask will be updated once they land.
- The DMG is **unsigned**. Homebrew automatically strips the `com.apple.quarantine` xattr on cask installs, so the app launches normally without the manual `xattr` command.
- Minimum macOS version: 11.0 (Big Sur).

## Source

App source: [github.com/tiagojct/loomings](https://github.com/tiagojct/loomings)
