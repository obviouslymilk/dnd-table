require('lib.StringInterpolation')

local CommandsHandler = require('lib.commands.CommandsHandler')

function onChat(message, sender)
  return CommandsHandler.processMessage(sender, message)
end
