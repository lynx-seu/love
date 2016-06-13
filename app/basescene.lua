local BASE = (...):match('(.-)[^%.]+$')
local app    = require (BASE.."app")
local config = require (BASE.."config")
local class  = require "xx.class"
local lg = love.graphics

local w, h = lg.getDimensions()

local basescene = class()

function basescene:show(scene, ...)
    app.show(scene)
end

function basescene:drawbg(file)
    if not self.bg then self.bg = lg.newImage(file) end
    local rw, rh = self.bg:getDimensions()
    local sw, sh = w/rw, h/rh
    local max = sw >= sh and sw or sh
    lg.draw(self.bg, w/2, h/2, 0, max, max, rw/2, rh/2)
end

function basescene:clear(r,g,b,a)
    lg.clear(r,g,b,a)
end

return basescene
