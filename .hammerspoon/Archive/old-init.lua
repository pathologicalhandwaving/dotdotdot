local tiling = require "hs.tiling"
local hotkey = require "hs.hotkey"
local mash = {"ctrl", "cmd", "alt"}

hotkey.bind(mash, "h", function() tiling.cycleLayout() end)
hotkey.bind(mash, ".", function() tiling.cycle(1) end)
hotkey.bind(mash, ",", function() tiling.cycle(-1) end)
hotkey.bind(mash, "space", function() tiling.promote() end)
hotkey.bind(mash, "Down", function() tiling.goToLayout("fullscreen") end)

-- If you want to set the layouts that are enabled
tiling.set('layouts', {
  'fullscreen', 'main-vertical', 'main-horizontal', 'rows', 'columns', 'gp-vertical', 'gp-horizontal',
})

-- Push the window into the exact center of the screen
local function center(window)
  frame = window:screen():frame()
  frame.x = (frame.w / 2) - (frame.w / 4)
  frame.y = (frame.h / 2) - (frame.h / 4)
  frame.w = frame.w / 2
  frame.h = frame.h / 2
  window:setFrame(frame)
end

hotkey.bind(mash, "c", function() tiling.toggleFloat(center) end)

-- Move Left
hs.hotkey.bind(mash, "Left", function()
 local win = hs.window.focusedWindow()
 local f = win:frame()
 local screen = win:screen()
 local max = screen:frame()

 f.x = max.x
 f.y = max.y
 f.w = max.w / 2
 f.h = max.h
 win:setFrame(f)
end)

-- Move Right
hs.hotkey.bind(mash, "Right", function()
 local win = hs.window.focusedWindow()
 local f = win:frame()
 local screen = win:screen()
 local max = screen:frame()

 f.x = max.x + (max.w / 2)
 f.y = max.y
 f.w = max.w / 2
 f.h = max.h
 win:setFrame(f)
end)


hs.hotkey.bind(mash, "R", function()
hs.reload()
end)
hs.alert.show("!HammerSpoon Load!")
