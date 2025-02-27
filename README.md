# Tmux Keybindings Guide

## Prefix Key
- Default prefix: `Ctrl + b`

## Window Management
- `prefix + c c` - Create new window
- `prefix + c o` - Organize window indexes (remove gaps)
- `prefix + Q` - Kill current window
- `prefix + ,` - Rename current window
- `prefix + [0-9]` - Switch to window number
- `prefix + p` - Previous window
- `prefix + n` - Next window

## Pane Management
- `prefix + v` - Split pane vertically
- `prefix + s` - Split pane horizontally
- `prefix + q` - Kill current pane
- `prefix + h/j/k/l` - Navigate panes (vim-style)
- `prefix + H/J/K/L` - Resize panes (hold prefix for repeat)

## Copy Mode (vim keys)
- `prefix + /` - Enter copy mode
- `v` - Start selection
- `y` - Copy selection and exit copy mode
- `r` - Toggle rectangle selection
- `Escape` - Cancel/exit copy mode

## Session Management
- `prefix + d` - Detach from session
- `prefix + s` - List sessions
- `prefix + $` - Rename session

## Other Useful Commands
- `prefix + R` - Refresh client
- `prefix + ?` - Show all keybindings
- `prefix + :` - Enter command mode

## Terminal Commands
- `tmux new -s <name>` - Create new session
- `tmux ls` - List sessions
- `tmux attach -t <name>` - Attach to session
- `tmux kill-session -t <name>` - Kill session
