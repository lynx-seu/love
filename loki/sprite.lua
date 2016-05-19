
local BASE = (...):match('(.-)[^%.]+$')
local class = require(BASE .. "class")

---------------------------------------------------- 
-- sprite info
---------------------------------------------------- 
local sprite = class()

function sprite:ctor()
    self.drawable = nil
    self.x, self.y, self.w, self.h = 0, 0, 0, 0
    self.r, self.g, self.b, self.a = 0xff, 0xff, 0xff, 0xff
    self.rot = 0
    self.sx, self.sy = 1, 1
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
    self.a = op
end

function sprite:setcolor(r, g, b, a)
    self.r = r or self.r
    self.g = g or self.g
    self.b = b or self.b
    self.a = a or self.a
end

function sprite:aabb()
    return self.x, self.y, self.w, self.h
end

function sprite:draw()
    local r, g, b, a = love.graphics.getColor()
    love.graphics.setColor(self.r, self.g, self.b, self.a)
    love.graphics.draw(self.drawable, self.x, self.y, self.rot, self.sx, self.sy)
    love.graphics.setColor(r,g,b,a)
end

return sprite
