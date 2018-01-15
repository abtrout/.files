local mod = {}
mod.__index = mod

-- make window animations faster.
hs.window.animationDuration = 0

-- optional margin between windows.
mod.margin = 0

-- set window margin in pixels.
function mod.setMargin(self, margin)
  self.margin = margin
end

-- snap focused window to left half of screen.
function mod:snapLeft()
	local win = hs.window.focusedWindow()
  local screen = win:screen()
  local max = screen:frame()
  local f = win:frame()

  f.x = max.x + mod.margin
  f.y = max.y + mod.margin
  f.w = max.w / 2 - (1.5 * mod.margin)
  f.h = max.h - (2 * mod.margin)

  win:setFrame(f)
end

-- snap focused window to right half of screen.
function mod:snapRight()
	local win = hs.window.focusedWindow()
  local screen = win:screen()
  local max = screen:frame()
  local f = win:frame()

  f.x = max.x + (max.w / 2) + (0.5 * mod.margin)
  f.y = max.y + mod.margin
  f.w = max.w / 2 - mod.margin
  f.h = max.h - (2 * mod.margin)

  win:setFrame(f)
end

return mod
