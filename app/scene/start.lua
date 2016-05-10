local start = {}

function start:ctor()
    self.img = love.graphics.newImage("assets/bg.jpg")
    self.w, self.h = self.img:getDimensions()
end

function start:draw()
    local w, h = love.graphics.getDimensions()
    local sx = w / self.w
    local sy = h / self.h
    love.graphics.draw(self.img, w/2, h/2, 0, sx, sy, self.w/2, self.h/2)
end

function start:keyreleased(key, code)
    print(key)
end

return start
