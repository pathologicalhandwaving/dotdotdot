-- App Launch Keybindings


a = hs.hotkey.modal.new({}, "shorty")
apps = {
  {'c', 'Chrome'},
  {'i', 'iTerm'},
  {'f', 'Finder'},
  {'s', 'Safari'},
  {'t', 'TeXShop'}
}
for i, app in ipairs(apps) do
  a:bind({}, app[1], function() launch(app[2]); a:exit(); end)
end

pressedA = function() a:enter() end
releasedA = function() end
k:bind({}, 'a', nil, pressedA, releasedA)

