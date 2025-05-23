local SpellCommandHandler = {}

---@param sender tts__Player
---@param arguments table<string>
SpellCommandHandler.parse = function (sender, arguments)
  print(sender.color)
end

return SpellCommandHandler
