#!/bin/bash
# Get current music info from playerctl

get_status() {
    playerctl status 2>/dev/null || echo "Stopped"
}

get_title() {
    title=$(playerctl metadata title 2>/dev/null)
    if [ -z "$title" ]; then
        echo "No Media Playing"
    else
        echo "$title"
    fi
}

get_artist() {
    artist=$(playerctl metadata artist 2>/dev/null)
    if [ -z "$artist" ]; then
        echo "Start a player to see info"
    else
        echo "$artist"
    fi
}

get_art() {
    playerctl metadata mpris:artUrl 2>/dev/null || echo ""
}

get_position() {
    local pos
    pos=$(playerctl position 2>/dev/null || echo "0")
    printf "%.0f" "$pos"
}

get_length() {
    local len
    len=$(playerctl metadata mpris:length 2>/dev/null || echo "0")
    echo $(( len / 1000000 ))
}

case "$1" in
    status) get_status ;;
    title) get_title ;;
    artist) get_artist ;;
    art) get_art ;;
    position) get_position ;;
    length) get_length ;;
    *) echo "Usage: $0 {status|title|artist|art|position|length}" ;;
esac
