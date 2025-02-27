#!/usr/bin/env bash

# Smart pane switching with awareness of Vim splits.
# See: https://github.com/christoomey/vim-tmux-navigator
is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|l?n?vim?x?|fzf)(diff)?$'"

bind-key -n 'C-w' if-shell "$is_vim" 'send-keys C-w'  'select-pane -L'
bind-key -n 'C-w C-h' if-shell "$is_vim" 'send-keys C-w C-h'  'select-pane -L'
bind-key -n 'C-w C-j' if-shell "$is_vim" 'send-keys C-w C-j'  'select-pane -D'
bind-key -n 'C-w C-k' if-shell "$is_vim" 'send-keys C-w C-k'  'select-pane -U'
bind-key -n 'C-w C-l' if-shell "$is_vim" 'send-keys C-w C-l'  'select-pane -R'

tmux_version='$(tmux -V | sed -En "s/^tmux ([0-9]+(.[0-9]+)?).*/\1/p")'

if-shell -b '[ "$(echo "$tmux_version < 3.0" | bc)" = 1 ]' \
    "bind-key -n 'C-w C-\\' if-shell \"$is_vim\" 'send-keys C-w C-\\'  'select-pane -l'"

if-shell -b '[ "$(echo "$tmux_version >= 3.0" | bc)" = 1 ]' \
    "bind-key -n 'C-w C-\\' if-shell \"$is_vim\" 'send-keys C-w C-\\\\'  'select-pane -l'"

bind-key -T copy-mode-vi 'C-w C-h' select-pane -L
bind-key -T copy-mode-vi 'C-w C-j' select-pane -D
bind-key -T copy-mode-vi 'C-w C-k' select-pane -U
bind-key -T copy-mode-vi 'C-w C-l' select-pane -R

bind-key -n 'C-w x' if-shell "$is_vim" 'send-keys C-w x' 'swap-window -t +1'
