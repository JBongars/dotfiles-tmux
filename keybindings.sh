#!/usr/bin/env bash

# vim-style key bindings
tmux bind h select-pane -L
tmux bind j select-pane -D
tmux bind k select-pane -U
tmux bind l select-pane -R

tmux bind -r H resize-pane -L 5
tmux bind -r J resize-pane -D 5
tmux bind -r K resize-pane -U 5
tmux bind -r L resize-pane -R 5

# vim-style copy mode
tmux set-window-option -g mode-keys vi
tmux bind -T copy-mode-vi v send -X begin-selection
tmux bind -T copy-mode-vi y send -X copy-selection
tmux bind -T copy-mode-vi r send -X rectangle-toggle

tmux bind v split-window -h
tmux bind s split-window -v

tmux bind q kill-pane
tmux bind Q kill-window

# choese session
# binding is prefix+f by default, this is not needed
# tmux bind g choose-session
# tmux bind f choose-tree -sZ
#
# guide
# +f find/select sessios
# +, rename current session
# +f x kill highlighted session
# +f , rename highlighted session
# +f +/- fold/unfold highlighted session
# +f t tag/untag highlighted session

# new session
tmux bind-key C command-prompt -p "Session name:" "new-session -s \"%%\""

# copy mode
tmux bind / copy-mode
tmux bind -T copy-mode-vi Escape send-keys -X cancel
