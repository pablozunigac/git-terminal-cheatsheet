# Git Terminal Cheatsheet & Workflow Engine

A modular, production-grade reference for Git operations, terminal automation, and macOS integration. Built for high-efficiency CLI workflows.

---

## Documentation Index

* [Level 1: Foundations & Core Mechanics](docs/01-foundations.md) — Initialization, staging, commits, and remote setup.
* [Level 2: Branching & Collaboration](docs/02-branching-collaboration.md) — Branch management, integration, and stashing.
* [Level 3: History, Inspection & Recovery](docs/03-history-recovery.md) — Auditing, undoing changes, and reflog recovery.
* [Level 4: Power Tools & macOS Integration](docs/04-power-tools-macos.md) — Interactive rebase, SSH, and macOS system integration.
* [Level 5: Workflows & Command Chains](docs/05-workflows-and-combos.md) — High-density, single-line command chains.

---

## Emergency Protocols (Break Glass in Case of Fire)

### 1. Undo Uncommitted Local Changes Immediately

```bash
git restore . && git clean -fd

[![Lint Markdown](https://github.com/pablozunigac/git-terminal-cheatsheet/actions/workflows/lint.yml/badge.svg)](https://github.com/pablozunigac/git-terminal-cheatsheet/actions)
