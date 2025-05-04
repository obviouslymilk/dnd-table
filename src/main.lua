require('lib.interpolation')

local ASSETS_UI = require('ui.assets')

local UiBundler = require('ui-bundler')


function onLoad()
    self.UI.setCustomAssets(ASSETS_UI)

    Wait.frames(function ()
        self.UI.setXml(UiBundler.get())
    end, 10)
end