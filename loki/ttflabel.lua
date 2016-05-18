
local BASE   = (...):match('(.-)[^%.]+$')
local class  = require(BASE .. "class")
local sprite = require(BASE .. "sprite")

local ttflabel = class(sprite)

function ttflabel:ctor(text, size, filename)
    local font = love.graphics.newFont(size)
    local text = love.graphics.newText(font, text)
    self.w, self.h = text:getDimensions()
    self.drawable = text
end

return ttflabel

