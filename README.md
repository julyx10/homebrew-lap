# Homebrew Tap for Lap

This repository contains the Homebrew Cask for [Lap](https://github.com/julyx10/lap), a private local photo manager.

## Install

```bash
brew tap julyx10/lap
brew install --cask lap
```

## Upgrade

```bash
brew update
brew upgrade --cask lap
```

## Uninstall

```bash
brew uninstall --cask lap
```

To also remove Lap's local app data:

```bash
brew uninstall --cask --zap lap
```

## Verify the Cask

```bash
brew style --cask julyx10/lap/lap
brew audit --cask julyx10/lap/lap
```

The cask definition lives in [`Casks/lap.rb`](Casks/lap.rb).
