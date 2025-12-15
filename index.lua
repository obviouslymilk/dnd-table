require('lib.string-interpolation')

local CommandsHandler = require('commands.commands-manager')

function onChat(message, sender)
  return CommandsHandler.processMessage(sender, message)
end

local UIBundler = require('ui.bundler')

function onLoad()
  UIBundler.bundle()
end
