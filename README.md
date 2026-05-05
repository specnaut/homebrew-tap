# mkrlabs/homebrew-tap

Homebrew formulas for Maker Labs CLI tooling.

## Install

```bash
brew tap mkrlabs/tap
brew install <formula>
```

## Available formulas

| Formula | Description | Source |
|---------|-------------|--------|
| `specflow` | AI project scaffolding CLI with auto-chain, review, and backlog | <https://github.com/mkrlabs/specflow> |

## How it works

`brew tap mkrlabs/tap` resolves to this repo (`mkrlabs/homebrew-tap`) per Homebrew convention. Each `Formula/<name>.rb` file declares a downloadable artefact (URL + SHA256) for each supported OS / architecture, plus a small install + test stub.

## Updating a formula

Each release of a tracked tool ships pre-built binaries on its GitHub Releases page with companion `.sha256` sidecars. The formula version + checksums are bumped from the release pipeline of the source repo (see e.g. `.github/workflows/release.yml` in `mkrlabs/specflow`).

## License

The formulas in this tap are provided as-is. Each tool ships under its own license — see the source repo of the formula in question.
