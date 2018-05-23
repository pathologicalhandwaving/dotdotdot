local tiling = require "hs.tiling"
local hotkey = require "hs.hotkey"

-- Key Combinations
local mash = {"ctrl", "cmd"}
local hyper = {"cmd","alt","ctrl"}
local super = {"cmd","alt","ctrl","shift"}


hotkey.bind(mash, "c", function() tiling.cycleLayout() end)
--hotkey.bind(mash, "j", function() tiling.cycle(1) end)
--hotkey.bind(mash, "k", function() tiling.cycle(-1) end)
hotkey.bind(mash, "space", function() tiling.promote() end)
--hotkey.bind(mash, "f", function() tiling.goToLayout("fullscreen") end)

-- Push the window into the exact center of the screen
local function center(window)
  frame = window:screen():frame()
  frame.x = (frame.w / 2) - (frame.w / 4)
  frame.y = (frame.h / 2) - (frame.h / 4)
  frame.w = frame.w / 2
  frame.h = frame.h / 2
  window:setFrame(frame)
end

hotkey.bind(mash, "f", function() tiling.toggleFloat(center) end)
