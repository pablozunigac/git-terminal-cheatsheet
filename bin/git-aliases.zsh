#!/usr/bin/env zsh
# ==============================================================================
# Git High-Efficiency Aliases & Shell Functions for macOS / Zsh
# Load in ~/.zshrc via: source /path/to/git-terminal-cheatsheet/bin/git-aliases.zsh
# ==============================================================================

# Daily Workflow
alias gs='git status -s'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gup='git add . && git commit -m "docs: update" && git push'

# Branching & Syncing
alias gb='git branch -vv'
alias gsw='git switch'
alias gsc='git switch -c'
alias gprune='git fetch --prune && git branch -vv'
alias grebase='git switch main && git pull && git switch - && git rebase main'

# History & Inspection
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gblame='git blame'
alias ghash='git rev-parse HEAD | pbcopy'

# Recovery & Plumbing
alias gundo='git reset --soft HEAD~1'
alias gdiscard='git restore . && git clean -fd'
alias gamend='git add . && git commit --amend --no-edit'
alias gforce='git push --force-with-lease'

# Custom Function: Fast SSH Key Verification
gssh() {
  ssh -T git@github.com
}