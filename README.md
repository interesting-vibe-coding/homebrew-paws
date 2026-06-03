# 🐾 Homebrew Paws

Homebrew tap for [Paws](https://github.com/interesting-vibe-coding/paws) — play games in your terminal while your AI coding agent works.

## Install

```bash
brew tap interesting-vibe-coding/paws
brew install paws          # the Paws host (menu · PTY · status HUD)
brew install paws-games    # the game library (Dog Jump · Earth Online · Tetris)
```

Or without tapping first:

```bash
brew install interesting-vibe-coding/paws/paws
```

Both formulae build from source (Rust). After installing, finish setup with the
[Paws install skill](https://github.com/interesting-vibe-coding/paws/blob/main/skills/paws-install/SKILL.md)
— it wires the Kaku Lua snippet and your agent's status hooks.

## Formulae

| Formula | Installs |
|---------|----------|
| `paws` | the terminal host binary |
| `paws-games` | `jump-high`, `earth-online`, `tetris` |

## License

MIT
