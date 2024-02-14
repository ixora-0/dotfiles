-- awesome_mode: api-level=4:screen=on
-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
local awful = require("awful")
require("awful.autofocus")
-- Notification library
local naughty = require("naughty")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

-- {{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
naughty.connect_signal(
  "request::display_error",
  function(message, startup)
    naughty.notification {
      urgency = "critical",
      title   = "Oops, an error happened" .. (startup and " during startup!" or "!"),
      message = message
    }
  end
)
-- }}}

require("theme.user_preferences")
require("theme.init")
require("core.signals")
require("core.notifications")
require("core.rules")

-- {{{ Tag layout
-- Table of layouts to cover with awful.layout.inc, order matters.
tag.connect_signal("request::default_layouts", function()
  awful.layout.append_default_layouts(User_prefs.layouts)
end)
-- }}}

require("bar.init")
Cyclefocus = require("cyclefocus")
Cyclefocus.centered = true
require("mappings.mouse_bindings")
require("mappings.key_bindings")

-- autostart
awful.spawn.with_shell("~/.config/awesome/autorun.sh")
