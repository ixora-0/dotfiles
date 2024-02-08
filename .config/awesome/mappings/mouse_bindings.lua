local awful = require("awful")

awful.mouse.append_global_mousebindings({
  -- awful.button({}, 3, function() mymainmenu:toggle() end), -- right click
  awful.button({}, 4, awful.tag.viewprev), -- scroll down
  awful.button({}, 5, awful.tag.viewnext), -- scroll up
})

client.connect_signal("request::default_mousebindings", function()
  awful.mouse.append_client_mousebindings({
    awful.button(
      {}, 1,
      function(c) c:activate { context = "mouse_click" } end
    ),
    awful.button(
      { User_prefs.modkey }, 1,
      function(c) c:activate { context = "mouse_click", action = "mouse_move" } end
    ),
    awful.button(
      { User_prefs.modkey }, 3,
      function(c) c:activate { context = "mouse_click", action = "mouse_resize" } end
    ),
  })
end)
