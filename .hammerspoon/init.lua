-- Load Extensions
--require("luarocks.loader")
--local application = require "hs.application"
--local window = require "hs.window"
--local hotkey = require "hs.hotkey"
--local keycodes = require "hs.keycodes"
--local fnutils = require "hs.fnutils"
--local alert = require "hs.alert"
--local screen =  require "hs.screen"
--local grid =  require "hs.grid"
--local hints = require "hs.hints"
--local timer = require "hs.timer"
--local appfinder = require "hs.appfinder"
--local applescript = require "hs.applescript"
--local eventtap = require "hs.eventtap"
--local popclick = require "hs.noises"
--
--local definitions = nil
--local hyper = nil
--local mash = nil
--
--local gridset =  function(frame)
--	return function()
--		local win = window.focusedWindow()
--		if win then
--			grid.set(win, frame, win:screen())
--		else
--			alert.show("No focused window.")
--		end
--	end
--
--end
--
--auxWin = nil
--
--function saveFocus()
--	auxWin = window.focusedWindow()
--	alert.show("Window '" ..auxWin:title() .. "' saved.")
--end
--
--function focusSaved()
--	if auxWin then
--		auxWin:focus()
--	end
--end
--
--local hotkeys = {}
--
--function createHotkeys()
--	for key, fun in pairs(definitions) do
--		local mod = hyper
--		if string.len(key) == 2 and string.sub(key,2,2) == "c" then
--			mod = {"ctrl"}
--		end
--
--		local hk = hotkey.new(mod, string.sub(key,1,1), fun)
--		table.insert(hotkeys, hk)
--	end
--end
--
--function rebindHotkeys()
--	for i, hk in ipairs(hotkeys) do
--		hk:disable()
--	end
--
--	hotkeys = {}
--	createHotkeys()
--	alert.show("Hotkeys Rebound")
--end
--
--function applyPlace(win, place)
--	local scrs = screen.allScreens()
--	local scr = scrs[place[1]]
--	grid.set(win, place[2], scr)
--end
--
--function applyLayout(layout)
--	return function()
--		for appName, place in pairs(layout) do
--			local app = appfinder.appFromName(appName)
--			if app then
--				for i, win in ipairs(app:allWindows()) do
--					applyPlace(win, place)
--				end
--			end
--		end
--	end
--end
--
--listener = nil
--
--popclickListening = false
--local scrollDownTimer = nil
--
--function popclickHandler(evNum)
--	if evNum == 1 then
--		scrollDownTimer = timer.doEvery(0.02, function()
--			eventtap.scrollWheel({0,-10},{}, "pixel")
--			end)
--	elseif evNum == 2 then
--		if scrollDownTimer  then
--			scrollDownTimer:stop()
--			scrollDownTimer = nil
--		end
--	elseif evNum == 3 then
--		if application.frontmostApplication():name() == "PDF Expert" then
--			eventtap.keyStroke({}, "p")
--		else
--			eventtap.scrollWheel({0,250},{}, "pixel")
--		end
--	end
--end
--
--function popclickPlayPause()
--	if not popclickListening then
--		listener:start()
--		alert.show("listening")
--	else
--		listener:stop()
--		alert.show("stopped listening")
--	end
--	popclickListening = not popclickListening
--end
--
--local function wrap(fn)
--	return function(...)
--		if fn then
--			local ok, err = xpcall(fn, debug.traceback, ...)
--			if not ok then hs.showerror(err) end
--		end
--	end
--end
--
--function popclickInit()
--	popclickListening = false
--	local fn = wrap(popclickHandler)
--	listener = popclick.new(fn)
--end
--
--function init()
--	createHotkeys()
--	popclickInit()
--	keycodes.inputSourceChanged(rebindHotkeys)
--	alert.show("HammerSpooooon!")
--end
--
---- Actual Config
--
--hyper = {"cmd", "alt", "ctrl", "shift"}
--mash = {"cmd", "alt", "ctrl"}
--hs.window.animationDuration = 0;
--grid.GRIDWIDTH = 6
--grid.GRIDHEIGHT = 8
--grid.MARGINX = 0
--grid.MARGINY = 0
--local gw = grid.GRIDWIDTH
--local gh = grid.GRIDHEIGHT
--
--local gomiddle = {x = 1, y = 1, w = 4, h = 6}
--local goleft = {x = 0, y = 0, w = gw/2, h = gh}
--local goright = {x = gw/2, y = 0, w = gw/2, h = gh}
--local gobig = {x = 0, y = 0, w = gw, h = gh}
--
--local fullApps = {
--	"Safari","iTerm","PDF Expert","BibDesk","TeXShop"
--}
--
--

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

-- Reload

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
 hs.reload()
end)
--hs.alert.show("Config loaded")

function reloadConfig(files)
   doReload = false
   for _,file in pairs(files) do
       if file:sub(-4) == ".lua" then
           doReload = true
       end
   end
   if doReload then
       hs.reload()
   end
end
local myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("!HammerSpoon Reloaded!")


