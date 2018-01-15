local mod = {}

function reloadIfLuaFileChanged(files)
  -- check if any lua files were changed.
  luaChanges = false
  for _,file in pairs(files) do
    if file:sub(-4) == ".lua" then luaChanges = true end
  end
  -- if they were, reload hammerspoon.
  if luaChanges then hs.reload() end
end

function mod:init()
  watcher = hs.pathwatcher.new("~/.hammerspoon/", reloadIfLuaFileChanged) 
  watcher:start()
end

return mod
