
local suit = require "Suit"
local class = require "loki.class"

local start = class()

function start:ctor()
end

function start:update(dt)
    if suit.Button("Hello, World!", 100,100, 300,30).hit then
        self:show("main")
    end
end

function start:draw()
    suit.draw()
end

function start:keyreleased(key, code)
    print(key)
end

return start

