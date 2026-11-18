local wezterm = require("wezterm")
local config = wezterm.config_builder()


config.window_padding = {
    left = 15,
    right = 15,
    top = 15,
    bottom = 0
}

config.warn_about_missing_glyphs = false
config.disable_default_key_bindings = true

-- do not skip close confirmation
-- action = wezterm.action.CloseCurrentTab({confirm = true})
config.skip_close_confirmation_for_processes_named = {}

config.font_size = 12
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- config.color_scheme = '...'
 

config.keys = {

  -- split panes left and right
    {
        key = "\\",
        mods = "ALT",
        action = wezterm.action.SplitHorizontal
        (
            {
                domain = "CurrentPaneDomain"
            }
        )
    },

    -- split panes top and bottom
    {
        key = "\\",
        mods = "CTRL",
        action = wezterm.action.SplitVertical
        (
            {
                domain = "CurrentPaneDomain"
            }
        )
    },

  -- switch between panes
    {
        key = "UpArrow",
        mods = "CTRL",
        action = wezterm.action.ActivatePaneDirection("Up")
    },
    {
        key = "DownArrow",
        mods = "CTRL",
        action = wezterm.action.ActivatePaneDirection("Down")
    },
    {
        key = "LeftArrow",
        mods = "CTRL",
        action = wezterm.action.ActivatePaneDirection("Left")
    },
    {
        key = "RightArrow",
        mods = "CTRL",
        action = wezterm.action.ActivatePaneDirection("Right")
    },


    -- maximize pane
    {
        key = "f",
        mods = "CTRL",
        action = wezterm.action.TogglePaneZoomState
    },

    -- new tab
    {
        key = "t",
        mods = "CTRL",
        action = wezterm.action.SpawnTab("CurrentPaneDomain")
    },

    -- close current tab
    {
        key = "w",
        mods = "CTRL",
        action = wezterm.action.CloseCurrentTab
        (
            {
                confirm = false
    
            }
        )

    },

    -- switch tab
    {
        key = "RightArrow",
        mods = "SHIFT",
        action = wezterm.action.ActivateTabRelative(1)
    },
    {
        key = "LeftArrow",
        mods = "SHIFT",
        action = wezterm.action.ActivateTabRelative(-1)
    },

    -- switch to a specific tab
    {
        key = "1",
        mods = "CTRL",
        action = wezterm.action.ActivateTab(0)
    },
    {
        key = "2",
        mods = "CTRL",
        action = wezterm.action.ActivateTab(1)
    },
    {
        key = "3",
        mods = "CTRL",
        action = wezterm.action.ActivateTab(2)
    },
    {
        key = "4",
        mods = "CTRL",
        action = wezterm.action.ActivateTab(3)
    },
    {
        key = "5",
        mods = "CTRL",
        action = wezterm.action.ActivateTab(4)
    },

    -- copy selected text
    {
        key = "c",
        mods = "CTRL|SHIFT",
        action = wezterm.action.CopyTo("Clipboard")
    },

    -- paste text
    {
        key = "v",
        mods = "CTRL|SHIFT",
        action = wezterm.action.PasteFrom("Clipboard")
    },

    -- increase font size
    {
        key = "=",
        mods = "CTRL",
        action = wezterm.action.IncreaseFontSize
    },

    -- decrease font size
    {
        key = "-",
        mods = "CTRL",
        action = wezterm.action.DecreaseFontSize
    },



}

return config
