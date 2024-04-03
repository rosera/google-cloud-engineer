cat <<EOF >~/.tmux.conf
# My CloudShell TMUX config

# Amend ctrl + b to ctrl + a
unbind C-b
set -g prefix C-a
EOF
