#!/usr/bin/env bash


# ----- Messages -----
tmux set-option -g mode-style 'bg=blue, fg=black'
tmux set-option -g message-style 'bg=blue, fg=black'

# ----- Center -----
tmux set-option -g status-justify centre
tmux set-option -g status-style "bg=black"
tmux set-window-option -g window-status-current-format '#[bold]#[fg=blue, bg=black]#[fg=black, bg=blue]#I:#W#[fg=blue, bg=black]'
tmux set-window-option -g window-status-format '#[bold]#[fg=green, bg=black]#[fg=black, bg=green]#I:#W#[fg=green, bg=black]'
tmux set-window-option -g window-status-separator ' '
tmux set-window-option -g window-status-style "bg=black"
tmux set-window-option -g window-status-current-style "bg=blue,fg=black"


# ----- Left -----
tmux set-option -g status-left "#[bold] #S #[fg=green, bg=black]"
tmux set-option -g status-left-style "bg=green,fg=black"


# ----- Right -----
tmux set-option -g status-right "#[bold]#[fg=green, bg=black] #[fg=black, bg=green] %d/%m  %R "
tmux set-option -g status-right-style "bg=black,fg=green"
