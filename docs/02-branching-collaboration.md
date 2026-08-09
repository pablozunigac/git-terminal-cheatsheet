# Level 2: Branching & Collaboration

### 1. Branch Management

```bash
git branch                              # List all local branches in the repository
git branch -a                           # List both local and remote-tracking branches
git switch -c feature/new-feature       # Create and switch to a new branch
git switch main                         # Switch to an existing branch
git branch -d feature/new-feature       # Delete a local branch safely (requires merged status)
git branch -D feature/new-feature       # Force delete an unmerged local branch
```

### 2. Integration & Remotes

```bash
git fetch origin                        # Download objects and refs from remote without merging
git merge feature/new-feature           # Merge specified branch changes into current active branch
git rebase main                         # Reapply commits on top of another base tip
git remote -v                           # List configured remote repository URLs
git remote add origin <url>             # Associate local repository with a remote URL
```

### 3. Stashing Work

```bash
git stash                               # Temporarily shelve uncommitted working directory changes
git stash pop                           # Apply staged stash set and discard it from stash list
git stash list                          # Display all currently stashed change records
```

---

## Common One-Liners & Command Chains

```bash
git switch -c feature/login && git push -u origin feature/login     # Create feature branch, switch to it, and set upstream tracking
git switch main && git pull && git switch - && git rebase main      # Update main branch and rebase current feature branch on top
git stash && git switch hotfix/bug-fix && git stash pop             # Shelve working changes, switch to hotfix branch, and restore work
git switch main && git merge feature/login && git branch -d feature/login  # Merge feature locally and safely delete feature branch
git fetch --prune && git branch -vv                                 # Prune stale remote tracking refs and list detailed branch sync status
```
