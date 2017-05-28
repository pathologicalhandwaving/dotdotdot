--
-- Key binding setup for all modules and misc functionality
--
local bindings = {}

local uapp = require('utils.app')

-- define some modifier key combinations
local mod = {
  s      = {'shift'},
  a      = {'alt'},
  cc     = {'cmd', 'ctrl'},
  ca     = {'cmd', 'alt'},
  as     = {'alt', 'shift'},
  cas    = {'cmd', 'alt', 'shift'},
}

-- MINE: f1 is hyper
local hyper = hs.hotkey.modal.new({}, 'f1')

-- Enter/Exit Hyper Mode when Fn is pressed/released
local pressedF1 = function() hyper:enter() end
local releasedF1 = function() hyper:exit() end

-- Bind the Hyper key
-- Also requires Karabiner-Elements to bind left_control to F6
hs.hotkey.bind({}, 'f1', pressedF1, releasedF1)
hs.hotkey.bind(mod.s, 'f1', pressedF1, releasedF1)

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
end

return bindings