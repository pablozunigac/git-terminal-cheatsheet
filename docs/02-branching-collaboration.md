# Level 2: Branching & Collaboration

### 2.1 Branch Management

```bash
git branch                              # List all local branches in the repository
git branch -a                           # List both local and remote-tracking branches
git switch -c <branch>                  # Create and switch to a new branch
git switch <branch>                     # Switch to an existing branch
git branch -m <new-name>                # Rename current active branch
git branch -d <branch>                  # Delete a local branch safely (requires merged status)
git branch -D <branch>                  # Force delete an unmerged local branch
```

### 2.2 Integration & Remotes

```bash
git fetch origin                        # Download objects and refs from remote without merging
git push -u origin <branch>             # Publish branch to remote and set upstream tracking
git push origin --delete <branch>       # Delete a remote branch on origin
git merge <branch>                      # Merge specified branch changes into current active branch
git rebase <branch>                     # Reapply commits on top of another base tip
git remote -v                           # List configured remote repository URLs
git remote add origin <url>             # Associate local repository with a remote URL
```

### 2.3 Stashing Work

```bash
git stash                               # Temporarily shelve uncommitted working directory changes
git stash pop                           # Apply staged stash set and discard it from stash list
git stash list                          # Display all currently stashed change records
git commit --allow-empty -m "<msg>"     # Create commit without file changes to initialize a branch
```

---

## Common One-Liners & Command Chains

```bash
git switch -c <branch> && git push -u origin <branch>                           # Create branch, switch to it, and set upstream tracking
git commit --allow-empty -m "<msg>" && git push -u origin <branch>              # Initialize remote branch tracking without modifying files
git switch main && git pull && git switch - && git rebase main                  # Update main branch and rebase current feature branch on top
git stash && git switch <branch> && git stash pop                               # Shelve working changes, switch branch, and restore work
git switch main && git merge <branch> && git branch -d <branch>                 # Merge branch locally and safely delete feature branch
git fetch --prune && git branch -vv                                             # Prune stale remote tracking refs and list detailed branch sync status
```
