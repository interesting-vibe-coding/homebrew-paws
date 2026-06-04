# 🐾 Homebrew Paws

[![CI](https://github.com/interesting-vibe-coding/homebrew-paws/actions/workflows/ci.yml/badge.svg)](https://github.com/interesting-vibe-coding/homebrew-paws/actions/workflows/ci.yml) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/interesting-vibe-coding/paws/blob/main/LICENSE)

Homebrew tap for [Paws](https://github.com/interesting-vibe-coding/paws) — play games in your terminal while your AI coding agent works.

## Install

```bash
brew tap interesting-vibe-coding/paws
brew install paws          # the Paws host (menu · PTY · status HUD)
brew install paws-games    # all 7 games
```

Or without tapping first:

```bash
brew install interesting-vibe-coding/paws/paws
brew install interesting-vibe-coding/paws/paws-games
```

Both formulae build from source (Rust). After installing, finish setup with the
[Paws install skill](https://github.com/interesting-vibe-coding/paws/blob/main/skills/paws-install/SKILL.md)
— it wires the terminal integration and your agent's status hooks.

## Formulae

| Formula | Installs |
|---------|----------|
| `paws` | the terminal host binary |
| `paws-games` | `jump-high` · `earth-online` · `tetris` · `snake` · `2048` · `breakout` · `space-invaders` (all 7 games) |

## Development builds

```bash
brew install --HEAD interesting-vibe-coding/paws/paws
brew install --HEAD interesting-vibe-coding/paws/paws-games
```

## License

MIT
