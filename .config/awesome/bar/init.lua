local awful = require("awful")

awful.screen.connect_for_each_screen(function(s)
  awful.tag(
    { "1", "2", "3", "4" },
    s,
    {
      awful.layout.layouts[1],
      awful.layout.layouts[2],
      awful.layout.layouts[1],
      awful.layout.layouts[1],
    }
  )

  require("modules.volume_osd")(s)
  require("modules.volume_controller")(s)

  s.layout_list = require("bar.widgets.layout_list")(s)
  s.taglist = require("bar.widgets.taglist")(s)
  s.tasklist = require("bar.widgets.tasklist")(s)
  s.date = require("bar.widgets.date")()
  s.clock = require("bar.widgets.clock")()

  if s.index == 1 then
    s.systray = require("bar.widgets.systray")(s)
    s.network = require("bar.widgets.network")()
    s.ram_info = require("bar.widgets.ram_info")()
    s.battery = require("bar.widgets.battery")()
    s.audio = require("bar.widgets.audio")(s)
    require("bar.left_bar")(s, { s.layout_list, s.systray, s.taglist })
    require("bar.center_bar")(s, { s.tasklist })
    require("bar.right_bar")(s, { s.ram_info, s.battery, s.network, s.audio, s.date, s.clock })
  else
    s.cpu_usage = require("bar.widgets.cpu_info")("usage")
    s.cpu_temp = require("bar.widgets.cpu_info")("temp")
    s.gpu_usage = require("bar.widgets.gpu_info")("usage")
    s.gpu_temp = require("bar.widgets.gpu_info")("temp")
    require("bar.left_bar")(s, { s.layout_list, s.taglist })
    require("bar.center_bar")(s, { s.tasklist })
    require("bar.right_bar")(s, { s.cpu_usage, s.cpu_temp, s.gpu_usage, s.gpu_temp, s.date, s.clock })
  end
end)
