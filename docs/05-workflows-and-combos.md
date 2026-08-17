# Level 5: Workflows & Combos

### 5.1 Context Switching, Stash Management & Hotfix Emergency

```bash
git stash save "WIP: feature updates" && git switch main && git pull                        # Shelve uncommitted workspace with descriptive label and pull fresh main
git switch -c hotfix/patch-v1 && touch fix.js && git add fix.js                             # Create isolated hotfix branch and stage critical patch files
git commit -m "fix: production patch" && git switch main && git merge hotfix/patch-v1       # Commit hotfix patch and fast-forward integrat e directly into main
git switch - && git stash pop && git stash list                                             # Return to original feature branch, re-apply shelved changes, and verify stash
git stash drop && git clean -fd                                                             # Discard top stash entry permanently and purge untracked local files/directories
```

### 5.2 History Audit, Recovery & Surgical Production Rollbacks

```bash
git log -p -2 index.js && git blame -L 10,25 index.js                                       # Inspect patch history and line-by-line author attribution for target file
git reflog -n 10 && git checkout -b recovery-branch <commit-id>                             # Audit local reference history log and reconstruct branch from lost commit SHA
git cherry-pick <commit-id> && git commit --amend --no-edit                                 # Surgically apply specific commit patch onto branch and amend staged adjustments
git revert <commit-id> --no-edit && git push origin main                                    # Generate non-destructive reversal commit for target bug and push to remote
git reset --soft HEAD~1 && git restore --staged index.js && git status                      # Soft reset HEAD, unstage specific target file, and verify clean index state
```

### 5.3 Advanced Power Chains, macOS Terminal & GitHub CLI Delivery

```bash
git rebase -i HEAD~3 && git push --force-with-lease origin main                             # Interactive squash/edit of last 3 commits with safe upstream force push
git add . && git commit --amend --no-edit && git rev-parse HEAD | pbcopy                    # Amend staged changes silently into HEAD and copy full commit SHA to clipboard
ssh-add --apple-use-keychain ~/.ssh/id_ed25519 && ssh -T git@github.com                     # Load ED25519 SSH key into macOS Keychain and verify GitHub authentication
gh repo create my-project --public --source=. --remote=origin --push                        # Provision public GitHub repository from current folder and push initial commit
gh pr create --fill && gh pr status                                                         # Spin up GitHub Pull Request pre-filled from commit history and print review status
git fetch origin main && git rebase origin/main && git push --force-with-lease              # Synchronize feature branch with upstream main via rebase and safe force push
```