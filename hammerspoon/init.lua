-- load/init spoons
hs.loadSpoon("PreventEarTrauma")
hs.loadSpoon("ReloadHammerspoon")

-- SNAP windows to the left/right half of
-- the screen, with optional margins.
snap = hs.loadSpoon("SnapWindows")
snap:setMargin(17)

local mash = { "ctrl", "cmd" }
hs.hotkey.bind(mash, "Left", snap.snapLeft)
hs.hotkey.bind(mash, "Right", snap.snapRight)

-- done!
hs.alert.show("Loaded ~/.hammerspoon/init.lua")
