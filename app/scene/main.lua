
local class = require "loki.class"
local ttflabel = require "loki.ttflabel"

local main = class()

function main:ctor()
    self.lb = ttflabel("test", 33)
    self.lb:setcolor(255, 0, 0)
    self.lb:sr(2, 1)
end


function main:draw()
    self.lb:draw()
end

function main:keyreleased(key, code)
    print(key)
end

return main

