local Api = require('lib.dnd-api')

local SpellCommandHandler = {}

local spellsLevelPalette = {
  [0] = "FFFFFF",
  [1] = "F0F4C7",
  [2] = "C5E1A5",
  [3] = "81C784",
  [4] = "4FC3F7",
  [5] = "1976D2",
  [6] = "7E57C2",
  [7] = "5E35B1",
  [8] = "D32F2F",
  [9] = "FF6D00",
}

---@param sender tts__Player
---@param arguments table<string>
SpellCommandHandler.parse = function (sender, arguments)
  if #arguments == 0 then
    printToColor("[f87171]Недостаточно аргументов:[-] spell <название заклинания>.", sender.color)
    return
  end

  local spellName = table.concat(arguments, " ")

  if #spellName < 3 then
    printToColor("[f87171]Слишком короткое название заклинания.", sender.color)
    return
  end

  SpellCommandHandler.getSpellsVariants(spellName, sender)
end


---@param spellName string
---@param sender tts__Player
SpellCommandHandler.getSpellsVariants = function (spellName, sender)

  local requestData = {
    page = 0,
    size = 160,
    order = {
      {
        field = "level",
        direction = "asc"
      },
      {
        field = "name",
        direction = "asc"
      }
    },
    search = {
      value = spellName,
      exact = false
    }
  }

  local body = JSON.encode(requestData)

  WebRequest.custom(Api.baseUrl .. "spells", "POST", true, body, Api.requestHeaders, function (response)
    local responseData = JSON.decode(response.text)

    if (response.is_error) then
        printToColor("[f87171]Произошла ошибка запроса при попытке поиска.", sender.color)
      return
    end

    if (#responseData == 0) then
      printToColor("[f87171]Заклинания по вашему запросу не найдены.", sender.color)
      return
    end

    if (string.lower(responseData[1].name.rus) == spellName) or #responseData == 1 then
      -- TODO обрабатываем как одно заклинание
      SpellCommandHandler.getSpell(responseData[1].url, sender)
    else
      SpellCommandHandler.showSpells(responseData, sender)
    end
  end)
end


---@param spells SpellPreview[]
---@param sender tts__Player
SpellCommandHandler.showSpells = function (spells, sender)
  printToColor(" ", sender.color)
  printToColor("По вашему запросу было найдено несколько заклинаний:", sender.color)
  for _, spell in ipairs(spells) do
    printToColor("[" .. spellsLevelPalette[spell.level] .. "]" .. (spell.level == 0 and "★" or spell.level) .. "[-] " .. spell.name.rus .. " [" .. spell.name.eng .. "]", sender.color)
  end
  printToColor(" ", sender.color)
end


---@param spellUrl string
---@param sender tts__Player
SpellCommandHandler.getSpell = function (spellUrl, sender)
  WebRequest.custom(Api.baseUrl .. spellUrl, "POST", true, "{}", Api.requestHeaders, function (response)
    ---@type Spell
    local spell = JSON.decode(response.text)

    local components = {}
    if (spell.components.v) then table.insert(components, "вербальный") end
    if (spell.components.s) then table.insert(components, "соматический") end
    if (spell.components.m) then table.insert(components, spell.components.m) end
    local componentsString = table.concat(components, ", ")

    printToColor(" ", sender.color)
    printToColor("[b]" .. spell.name.rus .. " [" .. spell.name.eng .. "][/b]", sender.color)
    printToColor("[e7e5e4][sup]" .. (spell.level == 0 and "заговор" or (spell.level .. " уровень")) .. ", " .. spell.school .. "[/sup]", sender.color)
    printToColor("[b]ʙᴩᴇʍя нᴀᴋᴧᴀдыʙᴀния[/b]: [e7e5e4]" .. spell.time, sender.color)
    printToColor("[b]диᴄᴛᴀнция[/b]: [e7e5e4]" .. spell.range, sender.color)
    printToColor("[b]дᴧиᴛᴇᴧьноᴄᴛь[/b]: [e7e5e4]" .. spell.duration, sender.color)
    printToColor("[b]ᴋоʍᴨонᴇнᴛы[/b]: [e7e5e4]" .. componentsString:sub(1,1):upper()..componentsString:sub(2), sender.color)
    printToColor(" ", sender.color)
    local description = SpellCommandHandler.formatText(spell.description)
    printToColor(description, sender.color)
    if spell.upper then
      local upper = SpellCommandHandler.formatText(spell.upper)
      printToColor("[b]нᴀ боᴧᴇᴇ ʙыᴄоᴋих уᴩоʙнях:[/b] " .. upper, sender.color)
      printToColor(" ", sender.color)
    end

    local spellClasses = {}
    for _, class in ipairs(spell.classes) do
      table.insert(spellClasses, class.name)
    end
    local spellClassesString = table.concat(spellClasses, ", ")
    printToColor("[b]ᴋᴧᴀᴄᴄы[/b]: [e7e5e4]" .. spellClassesString, sender.color)
    printToColor(" ", sender.color)
  end)
end


SpellCommandHandler.formatText = function (text)
  local desc = text
  desc = desc:gsub("</p>", "\n\n")
  desc = desc:gsub("&nbsp;", " ")

  desc = desc:gsub("<span class=\"saving_throw\">", "[fdba74]")
  desc = desc:gsub("<span class=\"advantage\">", "[bef264]")
  desc = desc:gsub("<span class=\"disadvantage\">", "[fca5a5]")
  desc = desc:gsub('<dice%-roller formula="%d+[Кк]%d+">', "[93c5fd]")
  desc = desc:gsub('<a href="([^"]*)">', "[93c5fd]")
  desc = desc:gsub("<em>", "[99f6e4]")
  desc = desc:gsub("<strong>", "[b]")

  desc = desc:gsub("</span>", "[-]")
  desc = desc:gsub("</em>", "[-]")
  desc = desc:gsub("</a>", "[-]")
  desc = desc:gsub("</dice%-roller>", "[-]")
  desc = desc:gsub("</strong>", "[/b]")


  desc = desc:gsub("%b<>", "")
  desc = desc:sub(1, -2)

  return desc
end

return SpellCommandHandler
