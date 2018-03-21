function showBrowser()
     local wv = hs.webview.new(hs.screen.primaryScreen():frame())
     wv:url("https://gist.github.com/pathologicalhandwaving/20728d49baac67ae2f557153e7396627"):windowStyle({"titled", "closable", "resizable"}) :show()
     -- bring the webview to front
     hs.application.get("Hammerspoon"):activate()
end
