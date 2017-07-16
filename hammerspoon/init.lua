local mash = { "ctrl", "cmd" }
local padding = 17

-- speed up window movement animations
hs.window.animationDuration = 0

-- move window left half 
hs.hotkey.bind(mash, "Left", function()
	local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + padding
  f.y = max.y + padding
  f.w = max.w / 2 - (1.5 * padding)
  f.h = max.h - (2 * padding)
  win:setFrame(f)
end)

-- move window right half 
hs.hotkey.bind(mash, "Right", function()
	local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2) + (0.5 * padding)
  f.y = max.y + padding
  f.w = max.w / 2 - padding
  f.h = max.h - (2 * padding)
  win:setFrame(f)
end)

-- auto reload hammerspoon config 
configWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", function(files)
  doReload = false
  for _,file in pairs(files) do
    if file:sub(-4) == ".lua" then
      doReload = true
    end
  end
  if doReload then
    hs.reload()
  end
end)

configWatcher:start()

-- done!
hs.alert.show("Hammerspoon: config loaded")
