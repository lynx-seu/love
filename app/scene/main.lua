
local class = require "xx.class"

local main = class()

function main:ctor()
end

function main:draw()
    love.graphics.print("test")
end

function main:keyreleased(key, code)
    print(key)
end

return main

