local awful = require("awful")
-- session manager
awful.util.spawn_with_shell(
  "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &"
)
-- set wallpaper
awful.util.spawn_with_shell(
  "$HOME/.fehbg &"
)
-- automatically hide the cursor
awful.util.spawn_with_shell(
  "unclutter --hide-on-touch &"
)
-- compositor
awful.util.spawn_with_shell(
  "picom --config ~/.config/picom/picom.conf &"
)

-- set capslock to ctrl
awful.util.spawn_with_shell(
  "setxkbmap -layout uk -option ctrl:nocaps"
)

-- start one drive
awful.util.spawn_with_shell(
  "onedrive --monitor"
)
