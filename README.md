# Git Terminal Cheatsheet & Workflow Engine
[![Lint Markdown Documentation](https://github.com/pablozunigac/git-terminal-cheatsheet/actions/workflows/lint.yml/badge.svg?branch=main)](https://github.com/pablozunigac/git-terminal-cheatsheet/actions/workflows/lint.yml)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)
![Main Protected](https://img.shields.io/badge/main-protected-blue.svg)

A modular, production-grade reference for Git operations, terminal automation, and macOS integration. Built for high-efficiency CLI workflows.

---

## Documentation Index

* [Level 1: Foundations & Core Mechanics](docs/01-foundations.md) — Initialization, staging, commits, and remote setup.
* [Level 2: Branching & Collaboration](docs/02-branching-collaboration.md) — Branch management, integration, and stashing.
* [Level 3: History, Inspection & Recovery](docs/03-history-recovery.md) — Auditing, undoing changes, and reflog recovery.
* [Level 4: Power Tools & macOS Integration](docs/04-power-tools-macos.md) — Interactive rebase, SSH, and macOS system integration.
* [Level 5: Workflows & Command Chains](docs/05-workflows-and-combos.md) — High-density, single-line command chains.

---

## macOS & Zsh Troubleshooting Tips

### Preventing `zsh: event not found` Errors

In Zsh (the default macOS shell), the `!` character triggers history expansion when enclosed in double quotes (`"..."`). To pass `!` literally in commit messages, Markdown links, or CLI arguments, wrap the text in single quotes (`'...'`) or escape it with a backslash (`\!`):

```bash
# Triggers Zsh history expansion error:
echo "[![Badge](https://...)]"

# Correct usage (single quotes prevent expansion):
echo '[![Badge](https://...)]'
