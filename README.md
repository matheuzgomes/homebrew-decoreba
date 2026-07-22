# homebrew-decoreba

Homebrew tap for [decoreba](https://github.com/matheuzgomes/decoreba) — a
personal command vault, organized by context.

## Install

```bash
brew tap matheuzgomes/decoreba
brew install decoreba
```

Verify the installation:

```bash
decoreba version
```

## Supported platforms

- macOS Intel (amd64)
- macOS Apple Silicon (arm64)
- Linux Intel (amd64)
- Linux ARM (arm64)

Windows users should install via npm: `npm install -g decoreba`.

## Updating

This tap is updated automatically by a GitHub Actions workflow in the
[decoreba](https://github.com/matheuzgomes/decoreba) repository. Each stable
release triggers a `repository_dispatch` event that downloads the four
binaries, computes SHA256 checksums, generates the formula, validates it
with `brew audit` and `brew test`, and commits the result.

## Manual bootstrap

If the automated pipeline fails, the formula can be updated manually:

```bash
VERSION="0.x.y"
curl -sSfLO "https://github.com/matheuzgomes/decoreba/releases/download/v${VERSION}/decoreba-darwin-amd64"
curl -sSfLO "https://github.com/matheuzgomes/decoreba/releases/download/v${VERSION}/decoreba-darwin-arm64"
curl -sSfLO "https://github.com/matheuzgomes/decoreba/releases/download/v${VERSION}/decoreba-linux-amd64"
curl -sSfLO "https://github.com/matheuzgomes/decoreba/releases/download/v${VERSION}/decoreba-linux-arm64"
shasum -a 256 decoreba-*
```

Then edit `Formula/decoreba.rb` with the version and SHA256 values.
