## macOS & Zsh Troubleshooting Tips

### Preventing `zsh: event not found` Errors

In Zsh (the default macOS shell), the `!` character triggers history expansion when enclosed in double quotes (`"..."`). To pass `!` literally in commit messages, Markdown links, or CLI arguments, wrap the text in single quotes (`'...'`) or escape it with a backslash (`\!`):

```bash
# Triggers Zsh history expansion error:
echo "[![Badge](https://...)]"

# Correct usage (single quotes prevent expansion):
echo '[![Badge](https://...)]'