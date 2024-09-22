require('utils.interpolation')

local FONTS_UI = require('ui.fonts')
local CHARACTER_SHEET_UI = require('ui.character-sheet')


function onLoad()
    self.UI.setCustomAssets(FONTS_UI)

    Wait.frames(function ()
        self.UI.setXml(CHARACTER_SHEET_UI)
    end, 2)
end