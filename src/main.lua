require('utils.interpolation')

local FONTS_UI = require('ui.fonts')

local UiBundler = require('ui-bundler')


function onLoad()
    self.UI.setCustomAssets(FONTS_UI)

    Wait.frames(function ()
        self.UI.setXml(UiBundler.get())
    end, 2)
end