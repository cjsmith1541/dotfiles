local wezterm = require 'wezterm'
local gpus = wezterm.gui.enumerate_gpus()

return {
    font = wezterm.font {
        family = 'mononoki Nerd Font',
        weight = 'Medium'
    },
    color_scheme = 'Gruvbox dark, hard (base16)',
    default_prog = { '/usr/bin/bash' },
    font_size = 20,
    check_for_updates = false,
    use_dead_keys = false,
    warn_about_missing_glyphs = false,
    enable_kitty_graphics = true,
    animation_fps = 1,
    cursor_blink_rate = 175,
    hide_tab_bar_if_only_one_tab = true,
    adjust_window_size_when_changing_font_size = false,
    window_padding = {
        left = 10,
        right = 10,
        top = 10,
        bottom = 10,
    },
    use_fancy_tab_bar = false,
    exit_behavior = "Close",
    window_close_confirmation = 'NeverPrompt',
    tab_bar_at_bottom = false,
    window_background_opacity = 0.8,
    wezterm.on('user-var-changed', function(window, pane, name, value)
        local overrides = window:get_config_overrides() or {}
        if name == "ZEN_MODE" then
            local incremental = value:find("+")
            local number_value = tonumber(value)
            if incremental ~= nil then
                while (number_value > 0) do
                    window:perform_action(wezterm.action.IncreaseFontSize, pane)
                    number_value = number_value - 1
                end
                overrides.enable_tab_bar = false
            elseif number_value < 0 then
                window:perform_action(wezterm.action.ResetFontSize, pane)
                overrides.font_size = nil
                overrides.enable_tab_bar = true
            else
                overrides.font_size = number_value
                overrides.enable_tab_bar = false
            end
        end
        window:set_config_overrides(overrides)
    end)
}
