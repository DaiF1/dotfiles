#!/bin/bash

function get_workspaces_info() {
    output=$(swaymsg -t get_workspaces | jq 'sort_by(.name | tonumber)')
    echo $output
}

get_workspaces_info

swaymsg -t subscribe '["workspace"]' --monitor | {
    while read -r event; do
        get_workspaces_info
    done
}
