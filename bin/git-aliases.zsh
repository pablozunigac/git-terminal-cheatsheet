#!/usr/bin/env zsh
# ==============================================================================
# High-Efficiency Git Engine for Zsh & macOS
# Load in ~/.zshrc: source /path/to/git-terminal-cheatsheet/bin/git-aliases.zsh
# ==============================================================================

# Fast status check
alias gs='git status -sb'

# Staging & Commits (Safe, interactive, explicit)
alias ga='git add'
alias gap='git add -p'
alias gaa='git add -A'
alias gc='git commit -m'
alias gca='git commit -av -m'
alias gamend='git commit --amend --no-edit'

# Branching & Syncing
alias gb='git branch -vv'
alias gsw='git switch'
alias gsc='git switch -c'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias gprune='git fetch --prune && (git branch -vv | grep ": gone]" || echo "No stale local branches found.")'

# History & Inspection
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gld="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit -p"
alias gblame='git blame -w -C'

# Recovery & Safe Undo
alias gundo='git reset --soft HEAD~1'
alias gdiscard='git restore --staged . && git restore .'

# ==============================================================================
# Functions (Context-Aware & Zero-Dependency)
# ==============================================================================

# Copy current HEAD commit hash to macOS clipboard
ghash() {
  local hash
  hash=$(git rev-parse HEAD 2>/dev/null) || return 1
  echo -n "$hash" | pbcopy
  echo "HEAD hash copied to clipboard: $hash"
}

# Sync working branch with upstream default branch (main or master)
grebase() {
  if [[ -n $(git status --porcelain) ]]; then
    echo "Error: Working directory is dirty. Stash or commit your changes first." >&2
    return 1
  fi

  local main_branch
  main_branch=$(git symbol-ref refs/remotes/origin/HEAD 2>/dev/null | sed 's@^refs/remotes/origin/@@')
  main_branch=${main_branch:-main}

  local current_branch
  current_branch=$(git branch --show-current)

  if [[ -z "$current_branch" ]]; then
    echo "Error: Detached HEAD state." >&2
    return 1
  fi

  echo "Syncing '$current_branch' with '$main_branch' via rebase..."
  git switch "$main_branch" && git pull --rebase && git switch "$current_branch" && git rebase "$main_branch"
}

# Fast SSH authentication check for GitHub
gssh() {
  ssh -T -o ConnectTimeout=5 git@github.com 2>&1 | grep -q "successfully authenticated" && \
    echo "GitHub SSH: Authenticated" || ssh -T -o ConnectTimeout=5 git@github.com
}