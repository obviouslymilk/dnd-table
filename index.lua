require('lib.string-interpolation')

local CommandsHandler = require('commands.commands-manager')

function onChat(message, sender)
  return CommandsHandler.processMessage(sender, message)
end
