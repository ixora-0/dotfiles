local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}

-- using font.conf alias doesn't respect Iosevka Raven's default width being 600
-- have to set explicitly
-- config.font = wezterm.font('monospace')
config.font = wezterm.font_with_fallback {
  'Iosevka Raven',
  'Symbols Nerd Font Mono',
  'Noto Sans Mono',
  'Noto Color Emoji'
}
config.font_size = 16

config.enable_tab_bar = false

config.visual_bell = {
  fade_in_function = 'EaseIn',
  fade_in_duration_ms = 75,
  fade_out_function = 'EaseOut',
  fade_out_duration_ms = 75,
}
config.colors = {
  visual_bell = '#202020',
}

config.adjust_window_size_when_changing_font_size = false

config.disable_default_key_bindings = true
config.keys = {
  {
    key = "a",
    mods = "CTRL",
    action = wezterm.action.SpawnCommandInNewWindow {}
  },

  { key = '=',         mods = 'CTRL',       action = wezterm.action.IncreaseFontSize },
  { key = '-',         mods = 'CTRL',       action = wezterm.action.DecreaseFontSize },
  { key = '0',         mods = 'CTRL',       action = wezterm.action.ResetFontSize },

  { key = 'V',         mods = 'CTRL|SHIFT', action = act.PasteFrom 'Clipboard' },

  { key = 'UpArrow',   mods = 'SHIFT',      action = act.ScrollToPrompt(-1) },
  { key = 'DownArrow', mods = 'SHIFT',      action = act.ScrollToBottom },
}

return config
