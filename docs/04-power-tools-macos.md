# Level 4: Power Tools, Plumbing & macOS Integration

### 4.1 Advanced Workflows

```bash
git cherry-pick <commit-id>                                     # Apply specific commit changes onto current active branch
git commit --amend --no-edit                                    # Modify latest commit with staged changes without updating message
git rebase -i HEAD~3                                            # Launch interactive rebase to edit or squash last 3 commits
git bisect start                                                # Initiate binary search to locate commit introducing a bug
```

### 4.2 Configuration & macOS/VS Code Setup

```bash
git config --global core.editor "code --wait"                   # Set VS Code as default Git editor on macOS
git config --global alias.st status                             # Create global shorthand alias 'git st' for status
git config --global core.excludesfile ~/.gitignore_global       # Set global ignore file for system entries (.DS_Store)
ssh-keygen -t ed25519 -C "email@domain.com"                     # Generate ED25519 SSH key pair on macOS for GitHub
ssh-add --apple-use-keychain ~/.ssh/id_ed25519                  # Store SSH passphrase securely in macOS Keychain across sessions
pbcopy < ~/.ssh/id_ed25519.pub                                  # Copy SSH public key directly to macOS clipboard
git config --global commit.gpgsign true && git config --global user.signingkey ~/.ssh/id_ed25519.pub     # Enable global cryptographic commit signing using ED25519 SSH public key
```

### 4.3 SSH Auditing & Diagnostics

```bash
ssh-add -l                                                      # List active SSH fingerprints loaded in system memory
ssh-keygen -lf ~/.ssh/id_ed25519.pub                            # Display SHA256 fingerprint and length of public key file
ssh -T git@github.com                                           # Test SSH connection and authentication status with GitHub
```

---

## Common One-Liners & Command Chains

```bash
git add . && git commit --amend --no-edit && git push --force-with-lease                    # Amend latest commit with staged work and execute safe force push
git rev-parse HEAD | pbcopy                                                                 # Extract full SHA-1 hash of latest commit directly to macOS clipboard
ssh-add --apple-use-keychain ~/.ssh/id_ed25519 && ssh -T git@github.com                     # Store SSH passphrase in Keychain and test GitHub connection
gh repo create my-repo --public --source=. --remote=origin --push                           # Initialize public remote repository via GitHub CLI and execute first push
git config --global core.editor "code --wait" && git config --global alias.st status        # Set VS Code editor and configure global status alias
```
