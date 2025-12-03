#!/usr/bin/env bash

# f=$(mktemp)

# tmux capture-pane -pS - > "$f"
# # tmux new-window "${EDITOR:-$(which nvim || "vi")} \"$f\"; rm \"$f\""
# tmux new-window "${EDITOR:-$(command -v nvim || echo vi)} '+set ft=bash' '+normal G' \"$f\"; rm \"$f\""

#!/usr/bin/env bash

f=$(mktemp)
pane_id="$(tmux display-message -p '#{pane_id}')"

tmux capture-pane -t "$pane_id" -pS - > "$f"

tmux new-window "${EDITOR:-nvim} \
    '+set ft=bash' \
    '+normal G' \
    '+nmap <buffer> <leader>r :silent !tmux capture-pane -t $pane_id -pS - > $f<CR>:e<CR>G' \
    '$f'; rm '$f'"
