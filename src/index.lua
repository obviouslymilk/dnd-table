require('lib.StringInterpolation')

local CommandsHandler = require('lib.commands.CommandsHandler')

function onLoad()
  local players = Player.getPlayers()
  CommandsHandler.processMessage(players[1], "spell Клинок зелёного пламени")
end

function onChat(message, sender)
  return CommandsHandler.processMessage(sender, message)
end
