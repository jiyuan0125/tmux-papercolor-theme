#!/bin/bash

color_light_grey="#eeeeee"
color_visual_grey="#d0d0d0"
color_grey="#444444"
color_green="#005f87"
color_light_green="#0087af"

time_format="%R"
date_format="%Y-%m-%d"

tmux set-option -gq status "on"
tmux set-option -gq status-justify "left"

tmux set-option -gq status-left-length "100"
tmux set-option -gq status-right-length "100"
tmux set-option -gq status-right-attr "none"

tmux set-option -gq message-style "bg=$color_grey,fg=$color_light_grey"
tmux set-option -gq message-command-style "bg=$color_green,fg=$color_light_grey"

tmux set-option -gq status-attr "none"
tmux set-option -gq status-left-attr "none"
tmux set-option -gq status-style "bg=$color_green,fg=$color_light_grey"

tmux set-option -gq pane-border-style "fg=$color_visual_grey"
tmux set-option -gq pane-active-border-style "fg=$color_green"

tmux set-window-option -gq mode-style "bg=$color_light_green,fg=$color_light_grey"

tmux set-window-option -gq window-status-fg $color_light_grey
tmux set-window-option -gq window-status-bg $color_grey
tmux set-window-option -gq window-status-attr "none"
tmux set-window-option -gq window-status-activity-bg $color_light_grey
tmux set-window-option -gq window-status-activity-fg $color_green
tmux set-window-option -gq window-status-activity-attr "none"
tmux set-window-option -gq window-status-separator ""

tmux set-option -gq @prefix_highlight_fg "$color_green"
tmux set-option -gq @prefix_highlight_bg "$color_visual_grey"
tmux set-option -gq @prefix_highlight_copy_mode_attr "bg=$color_visual_grey,fg=$color_visual_grey"
tmux set-option -gq @prefix_highlight_output_prefix "« "
tmux set-option -gq @prefix_highlight_output_suffix " "

tmux set-option -gq status-right "#{prefix_highlight}#[fg=$color_light_green,bg=$color_green]«#[fg=$color_light_grey,bg=$color_light_green] ${date_format} ${time_format} #[fg=$color_visual_grey,bg=$color_light_green]«#[fg=$color_grey,bg=$color_visual_grey] #h "
tmux set-option -gq status-left "#[fg=$color_grey,bg=$color_visual_grey] #S #[fg=$color_visual_grey,bg=$color_green]»"

tmux set-option -gq window-status-format "#[fg=$color_light_grey,bg=$color_light_green] #I » #W #[fg=$color_light_green,bg=$color_green]»"
tmux set-option -gq window-status-current-format "#[fg=$color_grey,bg=$color_visual_grey,bold] #I » #W #[fg=$color_light_green,bg=$color_green]»"
