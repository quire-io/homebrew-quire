# Quire CLI Homebrew tap

Homebrew formula for [Quire CLI](https://github.com/quire-io/quire-cli) — a command-line interface to the [Quire API](https://quire.io/dev/api/).

## Install

```bash
brew install quire-io/quire/quire
```

Or, equivalently:

```bash
brew tap quire-io/quire
brew install quire
```

After install:

```bash
quire --version
quire login
quire whoami
```

## Updating

```bash
brew upgrade quire
```

## What this tap ships

The formula installs the pre-built single-file binary for your platform (`quire-darwin-arm64`, `quire-darwin-x64`, `quire-linux-arm64`, or `quire-linux-x64`) from the [Quire CLI GitHub Releases](https://github.com/quire-io/quire-cli/releases). The binaries embed Node 22 LTS, so no separate Node runtime is needed.

For other install channels (npm, npx, raw single-file binary), see the [Quire CLI README](https://github.com/quire-io/quire-cli#install).

## Source

- CLI source code: <https://github.com/quire-io/quire-cli>
- npm package: <https://www.npmjs.com/package/@quire-io/quire-cli>
