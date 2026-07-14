# homebrew-loomings

Homebrew tap for [Loomings](https://loomings.tiagojct.eu) — a markdown writing app.

## Install

```sh
brew install --cask --no-quarantine tiagojct/loomings/loomings
```

Or tap first:

```sh
brew tap tiagojct/loomings
brew install --cask --no-quarantine loomings
```

### Why `--no-quarantine`?

The Loomings DMG is unsigned (no Apple Developer ID). Modern Homebrew
applies the `com.apple.quarantine` xattr to all downloaded files by
default; on macOS Sequoia / Tahoe this triggers Gatekeeper to refuse
launch with *"Loomings.app is damaged."* The flag skips that step.

If you already installed without the flag, fix the existing copy:

```sh
xattr -dr com.apple.quarantine /Applications/Loomings.app
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

- **Apple Silicon only.** No Intel macOS build is published (the free-tier CI runner queue was too unreliable to ship it); Intel Mac users [build from source](https://github.com/tiagojct/loomings#build-from-source).
- The DMG is **unsigned**. Use `--no-quarantine` at install time, or strip the `com.apple.quarantine` xattr afterwards.
- Minimum macOS version: 11.0 (Big Sur).

## Source

App source: [github.com/tiagojct/loomings](https://github.com/tiagojct/loomings)
