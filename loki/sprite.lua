
local BASE = (...):match('(.-)[^%.]+$')
local class = require(BASE .. "class")

---------------------------------------------------- 
-- sprite info
---------------------------------------------------- 
local sprite = class()

function sprite:ctor()
    local o = {
        drawable = nil,
        rot = 0,
        sx = 1, 
        sy = 1
    }
    o.x, o.y, o.w, o.h = 0, 0, 0, 0
    o.r, o.g, o.b, o.a = 0xff, 0xff, 0xff, 0xff
    self.private = o
end

function sprite:ps(x, y, s)
    self.private.x, self.private.y = x, y
    if s then
        self.private.sx = s; self.private.sy = s
    end
end

function sprite:sr(sx, sy, r)
    self.private.sx = sx
    self.private.sy = sy or self.private.sx
    if r then self.private.rot = r end
end

function sprite:setdrawable(d)
    self.private.drawable = d or self.private.drawable
end

function sprite:setopacity(op)
    self.private.a = op
end

function sprite:setsize(w, h)
    self.private.w = w
    self.private.h = h
end

function sprite:setcolor(r, g, b, a)
    self.private.r = r or self.private.r
    self.private.g = g or self.private.g
    self.private.b = b or self.private.b
    self.private.a = a or self.private.a
end

function sprite:aabb()
    return self.private.x, self.private.y, self.private.w, self.private.h
end

function sprite:getcolor()
    return self.private.r, self.private.g, self.private.b, self.private.a
end

function sprite:getsr()
    return self.private.sx, self.private.sy, self.private.rot
end

function sprite:getdrawable()
    return self.private.drawable
end

function sprite:draw()
    local drawable = self:getdrawable()

    if drawable then
        local r, g, b, a = love.graphics.getColor()
        love.graphics.setColor(self:getcolor())
        local x, y, w, h = self:aabb()
        local sx, sy, rot = self:getsr()
        love.graphics.draw(self:getdrawable(), x, y, rot, sx, sy)
        love.graphics.setColor(r,g,b,a)
    end
end

return sprite
