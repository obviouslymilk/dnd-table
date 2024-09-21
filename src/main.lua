require('utils.interpolation')

local characterUi = [[
    <Text color="${color}">Hello, World!</Text>
]]

function onLoad()
    self.UI.setXml(characterUi % {
        color = "white"
    });
end