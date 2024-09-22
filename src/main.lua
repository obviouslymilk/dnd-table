require('utils.interpolation')
local characterSheet = require('ui.character')

local FONT_CUSTOM_ASSETS = {
    {
        type = 1,
        name = "bold",
        url = "http://cloud-3.steamusercontent.com/ugc/2333495943854237911/8287105B99E942AF915AA0D53285BBBADCB13E33/"
    },
    {
        type = 1,
        name = "regular",
        url = "http://cloud-3.steamusercontent.com/ugc/2333496578698759898/3F417EDC5CF86F7B9BBFF71066F043672154EE4D/"
    }
}

--- Select character sheet panel
---@param player tts__Player
---@param arg string
function SelectPanel(player, arg)
    local isVisible = self.UI.getAttribute(arg .. '_inv', 'active')
    if (isVisible == 'false') then
        self.UI.setAttribute(arg .. '_inv', 'active', 'true')
        self.UI.setAttribute(arg .. '_char', 'active', 'false')
    else
        self.UI.setAttribute(arg .. '_inv', 'active', 'false')
        self.UI.setAttribute(arg .. '_char', 'active', 'true')
    end
end

local COLORS = {"white", "red"}
local function mapUiForColors()
    local mappedUi = ''
    for i, color in ipairs(COLORS) do
       mappedUi = mappedUi .. characterSheet % {
        color = color
       }
    end

    return mappedUi
end


function onLoad()
    self.UI.setCustomAssets(FONT_CUSTOM_ASSETS)

    Wait.frames(function ()
        self.UI.setXml(mapUiForColors())
    end, 2)
end