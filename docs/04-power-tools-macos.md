# Level 4: Power Tools, Plumbing & macOS Integration

### 1. Advanced Workflows

git cherry-pick <commit-id>             # Apply specific commit changes onto current active branch
git commit --amend --no-edit            # Modify latest commit with staged changes without updating message
git rebase -i HEAD~3                    # Launch interactive rebase to edit or squash last 3 commits
git bisect start                        # Initiate binary search to locate commit introducing a bug

### 2. Configuration & macOS/VS Code Setup

git config --global core.editor "code --wait"   # Set VS Code as default Git editor on macOS
git config --global alias.st status             # Create global shorthand alias 'git st' for status
git config --global core.excludesfile ~/.gitignore_global # Set global ignore file for system entries (.DS_Store)
ssh-keygen -t ed25519 -C "email@domain.com"     # Generate ED25519 SSH key pair on macOS for GitHub
pbcopy < ~/.ssh/id_ed25519.pub                  # Copy SSH public key directly to macOS clipboard

---

## Common One-Liners & Command Chains

git add . && git commit --amend --no-edit && git push --force-with-lease  # Amend latest commit with staged work and execute safe force push
git rev-parse HEAD | pbcopy                                         # Extract full SHA-1 hash of latest commit directly to macOS clipboard
ssh-T git@github.com                                              # Verify active SSH key authentication status against GitHub servers
gh repo create my-repo --public --source=. --remote=origin --push   # Initialize public remote repository via GitHub CLI and execute first push
git config --global core.editor "code --wait" && git config --global alias.st status  # Set VS Code editor and configure global status alias
