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
tmux bind -T copy-mode-vi y send -X copy-selection-and-cancel
tmux bind -T copy-mode-vi r send -X rectangle-toggle

tmux bind v split-window -h
tmux bind s split-window -v

tmux bind q kill-pane
tmux bind Q kill-window

# copy mode
tmux bind / copy-mode
tmux bind -T copy-mode-vi Escape send-keys -X cancel
