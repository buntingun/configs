local wezterm = require 'wezterm'
local sessionizer = require("sessionizer")
local smart_splits = wezterm.plugin.require('https://github.com/mrjones2014/smart-splits.nvim')
local config = wezterm.config_builder()

-- Leader is the same as my old tmux prefix
config.leader = { key = 'Space', mods = 'CTRL', timeout_milliseconds = 1000 }
config.font_size = 16
config.keys = {
  -- splitting
  {
    mods   = "LEADER|SHIFT",
    key    = "%",
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }
  },
  {
    mods   = "LEADER|SHIFT",
    key    = '"',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
  },
  {
    key = 'Enter',
    mods = 'LEADER',
    action = wezterm.action.ActivateCopyMode
  },
  { key = "f", mods = "LEADER", action = wezterm.action_callback(sessionizer.toggle) },
}

smart_splits.apply_to_config(config, {
  -- the default config is here, if you'd like to use the default keys,
  -- you can omit this configuration table parameter and just use
  -- smart_splits.apply_to_config(config)

  -- directional keys to use in order of: left, down, up, right
  direction_keys = { 'h', 'j', 'k', 'l' },
  -- modifier keys to combine with direction_keys
  modifiers = {
    move = 'CTRL', -- modifier to use for pane movement, e.g. CTRL+h to move left
    resize = 'META', -- modifier to use for pane resize, e.g. META+h to resize to the left
  },
})

return config
