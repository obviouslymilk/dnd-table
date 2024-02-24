local uilib = {}

---@param attributes? tts__UIPanelElement_Attributes
---@param children? tts__UIElement[]
uilib.Panel = function (attributes, children)
    ---@type tts__UIPanelElement
    return {
        tag = "Panel",
        attributes = attributes,
        children = children
    }
end

---@param attributes? tts__UIInputFieldElement_Attributes
uilib.InputField = function (attributes)
     ---@type tts__UIInputFieldElement
     return {
        tag = "InputField",
        attributes = attributes,
    }
end

---@param attributes? tts__UIHorizontalOrVerticalLayoutElementBase_Attributes
---@param children? tts__UIElement[]
uilib.VerticalScrollView = function (attributes, children)
    ---@type tts__UIVerticalScrollViewElement
    return {
        tag =  'VerticalScrollView',
        attributes = attributes,
        children = children
    }
end

---@param attributes? tts__UIVerticalLayoutElement_Attributes
---@param children? tts__UIElement[]
uilib.VerticalLayout = function (attributes, children)
    ---@type tts__UIVerticalLayoutElement
    return {
        tag =  'VerticalLayout',
        attributes = attributes,
        children = children
    }
end

return uilib