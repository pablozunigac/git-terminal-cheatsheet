# Level 3: History, Inspection & Recovery

### 1. Inspection & Auditing
git log --oneline --graph --all         # Display commit history as a compact graphical tree
git show HEAD                           # Show metadata and content changes of the latest commit
git blame index.js                      # Show line-by-line revision history and author for a file

### 2. Undoing Changes & Time Travel
git restore index.js                    # Discard uncommitted local modifications in a file
git restore --staged index.js           # Unstage file changes while keeping local modifications
git revert <commit-id>                  # Create a new commit reverting changes from a prior commit
git reset --soft HEAD~1                 # Undo latest commit while retaining changes in stage
git reset --hard HEAD~1                 # Permanently discard latest commit and uncommitted changes

### 3. Safety Net
git reflog                              # Display reference log history to recover lost commits

---

## Common One-Liners & Command Chains
git log -p -2 index.js && git blame index.js                        # View last 2 patch changes and line-by-line author attribution for a file
git reset --soft HEAD~1 && git status                               # Undo last commit while keeping changes staged in index
git restore --staged index.js && git diff index.js                  # Unstage specific file and review its working tree differences
git revert <commit-id> --no-edit && git push                        # Create an automated reversal commit for target ID and push immediately
git reflog -n 5 && git checkout -b recovery-branch <commit-id>     # Inspect recent reference activity and rebuild branch from lost commit