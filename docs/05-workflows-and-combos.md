# Level 5: Production Workflows & Command Chains

### 1. Foundations & Daily Execution

```bash
git add . && git commit -m "docs: update notes" && git push       # Standard daily stage, commit, and push workflow
pwd && ls -la && git status                                        # Inspect current directory path, hidden files, and repository state
touch docs/notes.md && git add docs/notes.md && git commit -m "feat: add notes"  # Create file, stage it immediately, and commit
git restore . && git clean -fd && git status                        # Discard all unstaged local modifications and untracked files
git fetch origin && git status -s                                   # Synchronize remote references and print short status overview
```

### 2. Branching & Team Collaboration

```bash
git switch -c feature/login && git push -u origin feature/login     # Create feature branch, switch to it, and set upstream tracking
git switch main && git pull && git switch - && git rebase main      # Update main branch and rebase current feature branch on top
git stash && git switch hotfix/bug-fix && git stash pop             # Shelve working changes, switch to hotfix branch, and restore work
git switch main && git merge feature/login && git branch -d feature/login  # Merge feature locally and safely delete feature branch
git fetch --prune && git branch -vv                                 # Prune stale remote tracking refs and list detailed branch sync status
```

### 3. Inspection, Recovery & Auditing

```bash
git log -p -2 index.js && git blame index.js                        # View last 2 patch changes and line-by-line author attribution for a file
git reset --soft HEAD~1 && git status                               # Undo last commit while keeping changes staged in index
git restore --staged index.js && git diff index.js                  # Unstage specific file and review its working tree differences
git revert <commit-id> --no-edit && git push                        # Create an automated reversal commit for target ID and push immediately
git reflog -n 5 && git checkout -b recovery-branch <commit-id>     # Inspect recent reference activity and rebuild branch from lost commit
```

### 4. Power Tools & macOS Integration

```bash
git add . && git commit --amend --no-edit && git push --force-with-lease  # Amend latest commit with staged work and execute safe force push
git rev-parse HEAD | pbcopy                                         # Extract full SHA-1 hash of latest commit directly to macOS clipboard
ssh -T git@github.com                                              # Verify active SSH key authentication status against GitHub servers
gh repo create my-repo --public --source=. --remote=origin --push   # Initialize public remote repository via GitHub CLI and execute first push
git config --global core.editor "code --wait" && git config --global alias.st status  # Set VS Code editor and configure global status alias
```
