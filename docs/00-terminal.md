# Level 0: Terminal Foundations & File System Navigation

### 0.1 Navigation & Location

```bash
pwd                                         # Print working directory (display absolute path of current folder)
cd <path>                                   # Change directory to the specified path
cd ..                                       # Move up one level to parent directory
cd ~                                        # Navigate directly to the user's home directory
cd -                                        # Switch back to the previous working directory
```

### 0.2 Directory Content Inspection

```bash
ls                                          # List files and directories in current location
ls -l                                       # Display detailed list with permissions, file size, owner, and date
ls -a                                       # List all entries including hidden files (dotfiles like .gitignore)
ls -la                                      # Display detailed list including hidden files and permissions
ls -lh                                      # Print file sizes in human-readable format (KB, MB, GB)
```

### 0.3 File & Directory Management

```bash
mkdir <directory>                           # Create a new directory
mkdir -p path/to/nested/folder              # Create nested directory tree structure recursively
touch <file>                                # Create an empty file or update access timestamp of existing file
cp <source> <destination>                   # Copy file to specified destination
cp -r <dir_source> <dir_dest>               # Copy directory and all its contents recursively
mv <source> <destination>                   # Move or rename file or directory
rm <file>                                   # Delete a specific file permanently
rm -rf <directory>                          # Force removal of directory and its entire nested content
```

### 0.4 System, Environment & Utilities

```bash
clear                                       # Clear current terminal screen view
history                                     # Display list of previously executed terminal commands
echo "text"                                 # Print text string or variable output to terminal
cat <file>                                  # Output entire file content directly to terminal
head -n 10 <file>                           # Display first 10 lines of a file
tail -n 10 <file>                           # Display last 10 lines of a file
open .                                      # Open current working directory in macOS Finder (or `xdg-open .` on Linux)
```

---

### Common One-Liners & Command Chains

```bash
pwd && ls -la                                                       # Print absolute path and list all files including hidden entries
mkdir -p src/components && touch src/components/Header.jsx          # Create directory structure and initialize file in one step
cd project && clear && ls -lh                                       # Navigate into project directory, clear view, and list human-readable contents
cp .env.example .env && ls -a                                       # Duplicate environment template file and verify dotfile creation
rm -rf dist node_modules && ls -la                                  # Purge build and dependency directories completely and check clean state
```


