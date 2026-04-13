# homebrew-gencli

Homebrew tap for [gencli](https://github.com/dapandaETH/cmdgen) - Turn natural language into suggested shell commands.

## Installation

```bash
# Tap this repository
brew tap dapandaETH/gencli

# Install gencli
brew install gencli
```

## Or use the full URL

```bash
brew install https://raw.githubusercontent.com/dapandaETH/homebrew-gencli/main/Formula/gencli.rb
```

## Usage

```bash
# Run gencli - you'll be prompted to set up API key on first run
gencli "list files"

# Manage API settings
gencli api
```

## Commands

- `gencli <prompt>` - Generate a shell command from natural language
- `gencli api` - Change API provider or update API key

## Supported Providers

- OpenCode (default)
- GLM
- OpenAI
- Anthropic

## Uninstall

```bash
brew uninstall gencli
brew untap dapandaETH/gencli
```