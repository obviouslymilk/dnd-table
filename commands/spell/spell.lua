---@meta

---@class Spell
---@field name SpellName
---@field level integer
---@field school string
---@field components SpellComponents
---@field range string
---@field duration string
---@field time string
---@field classes SpellClasses[]
---@field description string
---@field upper string

---@class SpellName
---@field rus string
---@field eng string

---@class SpellComponents
---@field v boolean
---@field s boolean
---@field m string | boolean

---@class SpellClasses
---@field name string
