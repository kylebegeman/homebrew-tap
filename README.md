# Dossier Homebrew Tap

Homebrew formulae for [Dossier](https://github.com/kylebegeman/dossier), a CLI
for generating self-contained, agent-readable HTML dossiers from structured JSON
models.

## Install

```bash
brew tap kylebegeman/tap
brew install dossier
dossier --help
```

You can also install without tapping first:

```bash
brew install kylebegeman/tap/dossier
```

## Upgrade

```bash
brew update
brew upgrade dossier
```

## Brewfile

```ruby
tap "kylebegeman/tap"
brew "dossier"
```

## Formula

| Formula | Description |
|---|---|
| `dossier` | Generate self-contained, agent-readable HTML dossiers. |

The formula builds from the tagged GitHub source release and installs the
`dossier` executable with Homebrew's Node packaging helper.
