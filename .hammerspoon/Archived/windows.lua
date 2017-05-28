-- Window Management
-- --
-- Mostly Full Screen but not full screen
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
 local win = hs.window.focusedWindow()
 local f = win:frame()
 local screen = win:screen()
 local max = screen:frame()
  f.x = max.x
  f.y = max.y
  f.w = max.w 
  f.h = max.h 
  win:setFrame(f)
end)

--  f.x = (f.w / 2) - (f.w / 4)
--  f.y = (f.h / 2) - (f.h / 4)
--  f.w = f.w / 2
--  f.h = f.h / 2


-- Move Left
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
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

-- Move Left Top Half
hs.hotkey.bind({"alt", "ctrl"}, "Up", function()
 local win = hs.window.focusedWindow()
 local f = win:frame()
 local screen = win:screen()
 local max = screen:frame()

 f.x = max.x
 f.y = max.y
 f.w = max.w / 2
 f.h = max.h / 2
 win:setFrame(f)
end)

-- Move Left Bottom Half
hs.hotkey.bind({"alt", "ctrl"}, "Down", function()
 local win = hs.window.focusedWindow()
 local f = win:frame()
 local screen = win:screen()
 local max = screen:frame()

 f.x = max.x
 f.y = max.y + (max.h / 2)
 f.w = max.w / 2
 f.h = max.h / 2
 win:setFrame(f)
end)

-- Tuck Up Left
hs.hotkey.bind({"alt"}, "Up", function()
 local win = hs.window.focusedWindow()
 local f = win:frame()
 local screen = win:screen()
 local max = screen:frame()

 f.x = max.x
 f.y = max.y - (max.h / 2)
 f.w = max.w / 2
 f.h = max.h / 2
 win:setFrame(f)
end)

-- Move Right
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
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

-- Move Right Top
hs.hotkey.bind({"cmd", "alt"}, "Up", function()
 local win = hs.window.focusedWindow()
 local f = win:frame()
 local screen = win:screen()
 local max = screen:frame()
 f.x = max.x + (max.w / 2)
 f.y = max.y
 f.w = max.w / 2
 f.h = max.h / 2
 win:setFrame(f)
end)

-- Move Right Bottom
hs.hotkey.bind({"cmd", "alt"}, "Down", function()
 local win = hs.window.focusedWindow()
 local f = win:frame()
 local screen = win:screen()
 local max = screen:frame()
 f.x = max.x + (max.w / 2)
 f.y = max.y + (max.h / 2)
 f.w = max.w / 2
 f.h = max.h / 2
 win:setFrame(f)
end)
