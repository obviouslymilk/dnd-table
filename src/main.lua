require('utils.interpolation')
local characterSheet = require('ui.character')


-- local function mapUiForColors()
--     local mappedUi = ''
--     for i, color in ipairs(COLORS) do
--        mappedUi = mappedUi .. characterUi % {
--         color = color
--        }
--     end

--     return mappedUi
-- end

local FONT_CUSTOM_ASSETS = {
    {
        name = "bold",
        url = "http://cloud-3.steamusercontent.com/ugc/2333495943854237911/8287105B99E942AF915AA0D53285BBBADCB13E33/"
    },
    {
        name = "regular",
        url = "http://cloud-3.steamusercontent.com/ugc/2333496578698759898/3F417EDC5CF86F7B9BBFF71066F043672154EE4D/"
    }
}


function onLoad()
    self.UI.setCustomAssets(FONT_CUSTOM_ASSETS)

    Wait.frames(function ()
        self.UI.setXml(characterSheet)
    end, 1)
end