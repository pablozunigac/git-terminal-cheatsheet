# Level 1: Foundations & Core Mechanics

### 1.1 Repository Setup & Status

```bash
git init                                    # Initialize a new local Git repository
git status                                  # Check working directory and staging area status
git status -s                               # Display repository status in short format
```

### 1.2 Staging & Committing

```bash
git add index.html                          # Stage a specific file for the next commit
git add .                                   # Stage all modified and new files in the current directory
git commit -m "feat: initial commit"        # Commit staged snapshot with a descriptive message
git commit -am "fix: quick typo fix"        # Stage tracked modified files and commit in a single step  
```

### 1.3 Remote Synchronization

```bash
git remote add origin <url>                 # Link local repository to a remote origin server
git push -u origin main                     # Push local commits and set default upstream branch
git pull origin main                        # Fetch and merge remote changes into current branch
```

---

## Common One-Liners & Command Chains

```bash
git add . && git commit -m "docs: update notes" && git push                             # Standard daily stage, commit, and push workflow
pwd && ls -la && git status                                                             # Inspect current directory path, hidden files, and repository state
touch docs/notes.md && git add docs/notes.md && git commit -m "feat: add notes"         # Create file, stage it immediately, and commit
git restore . && git clean -fd && git status                                            # Discard all unstaged local modifications and untracked files
git fetch origin && git status -s                                                       # Synchronize remote references and print short status overview
```
