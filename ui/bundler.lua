require('lib.string-interpolation')

local UiBundler = {}

local DEFAULTS_UI = require('ui.defaults')
local CHARACTER_SHEET_UI = require('ui.templates.sheet')
local ASSETS_UI = require('ui.assets')

local uiXmlBundle = ''

local function bundleDefaults()
    uiXmlBundle = uiXmlBundle .. DEFAULTS_UI
end

local function bundleCharacterSheets()
    uiXmlBundle = uiXmlBundle .. CHARACTER_SHEET_UI
end

local function replaceSpecialCharacters()
    uiXmlBundle = uiXmlBundle:gsub("\\n", "&#xA;")
end

--- Returns bundled UI with defaults and player specified interface.
---@return string
UiBundler.get = function ()
    bundleDefaults()
    bundleCharacterSheets()
    replaceSpecialCharacters()

    uiXmlBundle = uiXmlBundle % {
        color = "White"
    }
    return uiXmlBundle
end

UiBundler.bundle = function ()
    self.UI.setCustomAssets(ASSETS_UI)

    Wait.frames(function ()
        self.UI.setXml(UiBundler.get())
    end, 10)
end


return UiBundler
