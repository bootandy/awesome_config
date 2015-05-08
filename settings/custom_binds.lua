local awful = require("awful")

-- GLOBAL KEYBINDINGS
globalkeys = awful.util.table.join(globalkeys,
    --MULTIMEDIA KEYS
    awful.key({ }, "XF86AudioRaiseVolume", function () awful.util.spawn(raise_volume_cmd) end),
    awful.key({ }, "XF86AudioLowerVolume", function () awful.util.spawn(lower_volume_cmd) end),
    awful.key({ }, "XF86MonBrightnessDown", function () awful.util.spawn(brightness_cmd .. "-inc 10") end),
    awful.key({ }, "XF86MonBrightnessUp", function () awful.util.spawn(brightness_cmd .. " -dec 10") end),
    awful.key({ }, "XF86AudioMute", function () awful.util.spawn(mute_cmd) end),
    awful.key({ }, "XF86Launch4", function () awful.util.spawn(hibernate_cmd) end),
    --CHANGE KEYBOARD LAYOUT
    awful.key({ modkey,           }, "Shift_R", function () kbdcfg.switch() end),
    --PROMPT EXECUTE
    awful.key({ modkey },            "q",     function () mypromptbox[mouse.screen]:run() end),
    --MOD+TAB -- instead of switching to last client, rotate trough all clients
    awful.key({ modkey }, "Tab",
        function ()
            awful.client.focus.byidx(1)
            if client.focus then
                client.focus:raise()
            end
        end),

 -- Standard program
    awful.key({ modkey, }, "t", 	function () awful.util.spawn(terminal) end),
    awful.key({ modkey, }, "c",         function () awful.util.spawn('chromium-browser') end),
    awful.key({ modkey, }, "g",         function () awful.util.spawn('gimp') end),
    awful.key({ modkey, }, "v",         function () awful.util.spawn('vlc') end),
    awful.key({ modkey, }, "i",         function () awful.util.spawn('xchat') end),
    awful.key({ modkey, }, "t",         function () awful.util.spawn('pidgin') end),

    awful.key({ modkey, }, "p",         function () awful.util.spawn('/usr/lib/pycharm-4.0.6/bin/pycharm.sh') end),
    awful.key({ modkey, }, "a",         function () awful.util.spawn('/usr/lib/android-studio/bin/studio.sh') end),
    awful.key({ modkey, }, "j",         function () awful.util.spawn('/opt/idea-IC-135.1230/bin/idea.sh') end),
    awful.key({ modkey, }, "m",         function () awful.util.spawn('runfreemind') end),
    awful.key({ modkey, }, "s",         function () awful.util.spawn('skype') end),

    awful.key({ modkey, "Control" }, "s", function () awful.util.spawn('sudo /usr/sbin/pm-suspend') end),
    awful.key({ modkey }, "F12",        function () awful.util.spawn("xscreensaver-command -lock") end)

)

-- CLIENT KEYS (work on current clients-windows)
clientkeys = awful.util.table.join(clientkeys,
    --KILL active client
    awful.key({ modkey, "Shift"   }, "c",      function (c) c:kill()                         end)
)

-- CLIENT BUTTONS BINDINGS
--clientbuttons = awful.util.table.join(clientbuttons
--)
