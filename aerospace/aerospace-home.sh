#!/bin/bash
# AeroSpace Home Layout
# Left: 32" portrait Dell | Right: 32" landscape Dell
# 1=Spotify, 2=Slack+Linear (stacked), 3=Claude+Warp (stacked), 6=Cursor, 7=Comet, 9=Wispr Flow

move_app() {
    local app_name="$1"
    local workspace="$2"
    aerospace list-windows --all | grep "| ${app_name}" | while IFS='|' read -r wid rest; do
        wid=$(echo "$wid" | xargs)
        aerospace move-node-to-workspace "$workspace" --window-id "$wid" 2>/dev/null
    done
}

move_app "Spotify"    1
move_app "Slack"      2
move_app "Linear"     2
move_app "Claude"     3
move_app "Warp"       3
move_app "Cursor"     6
move_app "Comet"      7
move_app "Arc"        7
move_app "Wispr Flow" 9

# Set workspaces with two apps to tile vertically (top/bottom)
aerospace workspace 2
aerospace flatten-workspace-tree
aerospace layout tiles vertical

aerospace workspace 3
aerospace flatten-workspace-tree
aerospace layout tiles vertical

echo "Home layout applied"
