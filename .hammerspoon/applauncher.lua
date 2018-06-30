
--- AppLauncher

--- A closure function
function open(name)
   return function()
      hs.application.launchOrFocus(name)
      if name == 'Finder' then
         hs.appfinder.appFromName(name):activate()
      end
   end
end

--- quick open applications
hs.hotkey.bind({"alt"}, "F", open("Finder"))
hs.hotkey.bind({"alt"}, "E", open("Emacs"))
hs.hotkey.bind({"alt"}, "V", open("Vivaldi"))






