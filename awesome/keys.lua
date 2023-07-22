local awful = require("awful")
local gears = require("gears")

local keys = {}

-- Mod keys
superkey = "Mod4"
altkey = "Mod1"
ctrlkey = "Control"
shiftkey = "Shift"

keys.globalkeys = gears.table.join(
    -- Focus client by direction (hjkl keys)
    awful.key({ superkey }, "j",
        function()
            awful.client.focus.bydirection("down")
        end,
        {description = "focus down", group = "client"}),
    awful.key({ superkey }, "k",
        function()
            awful.client.focus.bydirection("up")
        end,
        {description = "focus up", group = "client"}),
    awful.key({ superkey }, "h",
        function()
            awful.client.focus.bydirection("left")
        end,
        {description = "focus left", group = "client"}),
    awful.key({ superkey }, "l",
        function()
            awful.client.focus.bydirection("right")
        end,
        {description = "focus right", group = "client"}),

    -- Focus client by direction (arrow keys)
    awful.key({ superkey }, "Down",
        function()
            awful.client.focus.bydirection("down")
        end,
        {description = "focus down", group = "client"}),
    awful.key({ superkey }, "Up",
        function()
            awful.client.focus.bydirection("up")
        end,
        {description = "focus up", group = "client"}),
    awful.key({ superkey }, "Left",
        function()
            awful.client.focus.bydirection("left")
        end,
        {description = "focus left", group = "client"}),
    awful.key({ superkey }, "Right",
        function()
            awful.client.focus.bydirection("right")
        end,
        {description = "focus right", group = "client"}),
)

return keys
