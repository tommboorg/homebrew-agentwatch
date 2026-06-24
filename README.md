# homebrew-agentwatch

Homebrew tap for [AgentWatch Sync](https://agentwatch.tommbo.com) - the sync agent for AgentWatch observability platform.

## Installation

### Stable (Production)

```bash
brew tap tommboorg/agentwatch
brew install --cask agentwatch-sync
```

### QA (Pre-release)

```bash
brew tap tommboorg/agentwatch
brew install --cask agentwatch-sync-qa
```

## Updating

```bash
brew update
brew upgrade --cask agentwatch-sync
# or for QA:
brew upgrade --cask agentwatch-sync-qa
```

## Uninstalling

```bash
brew uninstall --cask agentwatch-sync
# or for QA:
brew uninstall --cask agentwatch-sync-qa
```

## What is AgentWatch Sync?

AgentWatch Sync is a background agent that watches your local Claude Desktop and Cursor IDE sessions and pushes them to your AgentWatch dashboard for observability, cost tracking, and quality analysis.

- **Prod server:** https://agentwatch.tommbo.com
- **QA server:** https://agentwatch.qa.tommbo.com

## Casks

| Cask | Environment | Version |
|------|-------------|---------|
| `agentwatch-sync` | Production | Latest stable |
| `agentwatch-sync-qa` | QA / Pre-release | `0.0.0-qa` |

## Issues

Report issues at [tommboorg/agentwatch](https://github.com/tommboorg/agentwatch/issues).
