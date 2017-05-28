--
-- Key binding setup for all modules and misc functionality
--
local bindings = {}

local uapp = require('utils.app')

-- define some modifier key combinations
local mod = {
  s      = {'shift'},
  a      = {'alt'},
  ac     = {''ctrl', 'alt'},
  cc     = {'cmd', 'ctrl'},
  ca     = {'cmd', 'alt'},
  as     = {'alt', 'shift'},
  cas    = {'cmd', 'alt', 'shift'},
}

-- Hyper key
-- Karabiner: Mapped Control_L to F1
local hyper = hs.hotkey.modal.new({}, 'F1')

-- Enter/Exit Hyper Mode when F1 is pressed/released
local pressedF1 = function() hyper:enter() end
local releasedF1 = function() hyper:exit() end

-- Bind the Hyper key
-- Also requires Karabiner-Elements to bind left_control to F1
hs.hotkey.bind({}, 'F1', pressedF1, releasedF1)
hs.hotkey.bind(mod.s, 'F1', pressedF1, releasedF1)

function bindings.bind()
  -- launch and focus applications
  -- (all use hyper key)
  hs.fnutils.each({
    {key = 'b',  app = 'BibDesk'},   
    {key = 'c',  app = 'Slack'},
    {key = 'f',  app = 'Finder'},
    {key = 'i',  app = 'iTerm'},
    {key = 'm',  app = 'TeXMaker'},
    {key = 'q',  app = 'Quip'},
    {key = 's',  app = 'Safari'},
    {key = 't',  app = 'Things'},           
    {key = 'p',  app = 'PDF Expert'},        
    {key = 'u',  app = 'StarUML'},
  }, function(item)
    local appActivation = function()
      hs.application.launchOrFocus(item.app)

      local app = hs.appfinder.appFromName(item.app)
      if app then
        app:activate()
        app:unhide()
      end
    end

    hyper:bind({}, item.key, appActivation)
  end)

  -- toggle the hammerspoon console, focusing on the previous app when hidden
  local lastApp = nil
  local function toggleConsole()
    local frontmost = hs.application.frontmostApplication()
    hs.toggleConsole()
    if frontmost:bundleID() == 'org.hammerspoon.Hammerspoon' then
      if lastApp ~= nil then
        lastApp:activate()
        lastApp = nil
      end
    else
      lastApp = frontmost
    end
  end

  local function maximizeFrontmost()
    local win = hs.application.frontmostApplication():focusedWindow()
    if not win:isFullScreen() then win:maximize() end
  end
  
  -- LEFT HAND SIDE
  
  -- Move focused window to left half of screen
  local function moveLeft()
  	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screeen()
	local max = screen:frame()
	
	f.x = max.x
	f.y = max.y - (max.h / 2)
	f.w = max.w / 2
	f.h = max.h / 2
	win.setFrame(f)
	hs.hotkey.bind(mod.cas, 'Left')
  end
	
  -- Move focused window to top left quarter
  local function leftTop()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local = screen:frame()
    
    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
    hs.hotkey.bind(mod.ac, 'Up')
  end

  -- Move focused window to bottom left quarter
  local function leftBottom()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
    hs.hotkey.bind(mod.ca, 'Down')
  end
  
  -- RIGHT HAND SIDE
  
  -- Move focused window to right half of screen
  local function moveRight()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
    
    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
    hs.hotkey.bind(mod.cas, 'Right')
  end
  
  -- Move focused window to top right quarter
  local function topRight()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
 
    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
    hs.hotkey.bind(mod.ac, 'Up')
  end

  -- Move focused window to bottom right quarter
  local function rightBottom()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
 
    f.x = max.x + (max.w / 2)
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
    hs.hotkey.bind(mod.ac, 'Down')
  end
  
  
  -- Tuck Up
  local function tuckUp()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y - (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
    hs.hotkey.bind(mod.a, 'Up')
  end


  -- module key bindings
  -- (all using shift-hyper)
  hs.fnutils.each({
    {key = '0',  fn = hsm.worktime.nextMode},
    {key = '8',  fn = hsm.worktime.pauseUnpause},
    {key = '9',  fn = hsm.worktime.reset},
    {key = '\\', fn = hsm.caffeine.toggle},
    {key = 'c',  fn = hsm.cheatsheet.cycle},
    {key = 'r',  fn = hs_reload},
    {key = 's',  fn = hsm.cheatsheet.toggle},
    {key = 'v',  fn = uapp.forcePaste},
    {key = 'x',  fn = hsm.cheatsheet.chooserToggle},
    {key = 'y',  fn = toggleConsole},
    {key = 'z',  fn = maximizeFrontmost},    
  }, function(object)
    hyper:bind(mod.s, object.key, object.fn)
  end)

  -- bindings for the spacebar
  hs.hotkey.bind(mod.a,    hs.keycodes.map.space, hsm.scratchpad.toggle)
  hs.hotkey.bind(mod.as,     hs.keycodes.map.space, hsm.timer.toggle)
  hyper:bind({},  hs.keycodes.map.space, hsm.notational.toggle)
  hyper:bind(mod.s, hs.keycodes.map.space, function()
    hsm.notational.toggle(hsm.notational.cfg.path.til)
  end)
end

return bindings