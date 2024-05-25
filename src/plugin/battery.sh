#!/usr/bin/env bash
#
# shellcheck disable=SC2005
plugin_battery_icon=$(get_tmux_option "@theme_plugin_battery_icon" "󰁹")
plugin_battery_accent_color=$(get_tmux_option "@theme_plugin_battery_accent_color" "blue7")
plugin_battery_accent_color_icon=$(get_tmux_option "@theme_plugin_battery_accent_color_icon" "blue0")

# https://man7.org/linux/man-pages/man1/date.1.html
plugin_battery_format=$(get_tmux_option "@theme_plugin_battery_format" " #{battery_icon_status} #{battery_percentage}")

function load_plugin() {
  echo "${plugin_battery_format}"
} 

export plugin_battery_icon plugin_battery_accent_color plugin_battery_accent_color_icon
