require('lib.string-interpolation')

local CommandsHandler = require('lib.commands.CommandsHandler')

function onLoad()
  local players = Player.getPlayers()
  CommandsHandler.processMessage(players[1], "spell исцеление")
end
