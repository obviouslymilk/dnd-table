local SpellCommandHandler = {}


---@param sender tts__Player
---@param arguments table<string>
SpellCommandHandler.parse = function (sender, arguments)
  if #arguments == 0 then
    printToColor("[f87171]Недостаточно аргументов:[-] spell <название заклинания>", sender.color)
    return
  end

  local spellName = table.concat(arguments, " ")

  if #spellName < 3 then
    printToColor("[f87171]Слишком короткое название", sender.color)
    return
  end
end

---@param spellName string
SpellCommandHandler.getSpells = function (spellName)
  --TODO: сделать запрос на спеллы и обработать них
end

return SpellCommandHandler
