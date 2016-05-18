
local BASE = (...):match('(.-)[^%.]+$')
local class = require(BASE .. "class")

---------------------------------------------------- 
-- sprite info
---------------------------------------------------- 
local sprite = class()

function sprite:ctor()
    self.drawable = nil
    self.x, self.y, self.w, self.h = 0, 0, 0, 0
    self.rot = 0
    self.sx, self.sy = 1, 1
    self.opacity = 0xff
end

function sprite:ps(x, y, s)
    self.x, self.y = x, y
    if s then
        self.sx = s; self.sy = s
    end
end

function sprite:sr(sx, sy, r)
    self.sx = sx
    self.sy = sy or self.sx
    if r then self.rot = r end
end

function sprite:setopacity(op)
    self.opacity = op
end

function sprite:aabb()
    return self.x, self.y, self.w, self.h
end

function sprite:draw()
    local r, g, b, a = love.graphics.getColor()
    love.graphics.setColor(0xff, 0xff, 0xff, self.opacity)
    love.graphics.draw(self.drawable, self.x, self.y, self.rot, self.sx, self.sy)
    love.graphics.setColor(r,g,b,a)
end

return sprite
