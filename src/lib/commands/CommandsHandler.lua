local SpellCommandHandler = require('lib.commands.SpellCommandHandler')

local CommandsHandler = {}

local COMMANDS = {
  spell = "spell"
}

---@param sender tts__Player
---@param message string
CommandsHandler.processMessage = function (sender, message)
  if not CommandsHandler.assertIsCommand(message) then return end

  local command, arguments = CommandsHandler.parseCommand(message)

  if command == COMMANDS.spell then
    SpellCommandHandler.parse(sender, arguments)
  end
end

---@param message string
---@return boolean
CommandsHandler.assertIsCommand = function (message)
  local firstWord = message:match("(%w+)(.*)")

  for _, command in pairs(COMMANDS) do
    if command == firstWord then
      return true
    end
  end

  return false
end

---@param message string
---@return string command
---@return table arguments
CommandsHandler.parseCommand = function (message)
  local command
  local arguments = {}

  for word in string.lower(message):gmatch("%S+") do
    table.insert(arguments, word)
  end

  command = arguments[1]
  table.remove(arguments, 1) -- Т.к название - первый элемент в массиве слов (т.е аргументов). Нужно убрать.

  return command, arguments
end

return CommandsHandler
