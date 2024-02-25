local characterSheetUI = require("ui.character_sheet")

local UNITERACTABLE_GUID = {
    "8f9d8c",
    "2c9e4f"
}

local SHEETS_GUIDS = {
    ["White"] = "8971e4"
}

local FONT_CUSTOM_ASSETS = {
    {
        type = 1,
        name = "mookmania_bold",
        url = "http://cloud-3.steamusercontent.com/ugc/2333495943854237911/8287105B99E942AF915AA0D53285BBBADCB13E33/"
    },
    {
        type = 1,
        name = "mookmania_regular",
        url = "http://cloud-3.steamusercontent.com/ugc/2333496578698759898/3F417EDC5CF86F7B9BBFF71066F043672154EE4D/"
    }
}

local function setupSheets()
    for color, guid in pairs(SHEETS_GUIDS) do
        local sheet = getObjectFromGUID(guid)
        assert(sheet, "Sheet was not found: Invalid GUID")

        sheet.UI.setCustomAssets(FONT_CUSTOM_ASSETS)
        Wait.frames(function ()
            sheet.UI.setXmlTable(characterSheetUI)
        end, 2)
    end
end

local function setUninteractable()
    for _, guid in ipairs(UNITERACTABLE_GUID) do
        getObjectFromGUID(guid).interactable = false
    end
end

local function hideGamemasterZones(...)
    for _,zoneGUID in ipairs({...}) do
        getObjectFromGUID(zoneGUID).getChild('TransparentCube').getComponent("MeshRenderer").set('forceRenderingOff', true)
    end
end

function onLoad()
    setUninteractable()
    setupSheets()
    hideGamemasterZones("eaef99","6192e7")
end