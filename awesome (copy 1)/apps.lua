-- Apps config, see keymaps/keyboard.lua to see how this is handled in keybindings
local apps = {
  terminal     = "wezterm",                                              -- terminal emulator
  -- rofi settings
  drunner      = "rofi -show drun -show-icons",                          -- desktop runner
  runner       = "rofi -show run",                                       -- normal runner
  runner_power = "$HOME/.config/rofi/scripts/rofi_power",                -- power manager
  runner_mount = "$HOME/.config/rofi/scripts/rofi_mount",                -- drive mounter
  runner_blue  = "$HOME/.config/rofi/scripts/rofi_blue",                 -- bluetooth manager
  runner_wifi  = "$HOME/.config/rofi/scripts/rofi_wifi",                 -- wifi manager
  runner_scrot = "$HOME/.config/rofi/scripts/rofi_scrot",                -- screenshots manager
  runner_emoji = "$HOME/.config/rofi/scripts/rofi_emoji",                -- emojis manager
  runner_wall  = "$HOME/.config/rofi/scripts/rofi_wall",                 -- wallpapers manager
  -- terminal scripts
  vidytfzf     = "wezterm start --class vidytfzf -- ytfzf -flstT chafa", -- youtube
  musytfzf     = "wezterm start --class musytfzf -- ytfzf -mlstT chafa", -- youtube music
  ani_cli      = "wezterm start --class ani-cli -- ani-cli",             -- anime
  flix_cli     = "wezterm start --class flix-cli -- flix-cli",           -- movies
  newsboat     = "wezterm start --class hackernews_tui -- hackernews_tui",           -- newsboat
  btop         = "wezterm start --class btop -- btop",                   -- btop
  htop         = "wezterm start --class htop -- htop",                   -- htop
  pulsemixer   = "wezterm start --class pulsemixer -- pulsemixer",       -- pulsemixer
  alsamixer    = "wezterm start --class alsamixer -- alsamixer",         -- alsamixer
  -- default apps per tag
  editor       = "nvim",                                                 -- TAG 1
  file         = "wezterm start --class vifm -- vifm",                   -- TAG 2
  browser      = "firefox",                                              -- TAG 3
  chat         = "discord",                                    -- TAG 4
  music        = "youtube-music",                   -- TAG 5
  movieplayer  = "jellyfinmediaplayer",                                        -- TAG 7
  noteapp      = "libreoffice",                              -- TAG 8
  game         = "retroarch",                                -- TAG 9
  game1        = "steam"                                     -- TAG 6
}
return apps
