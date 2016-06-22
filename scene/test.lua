
local suit = require "SUIT"
local class = require "hump.class"
local spritepack = require "xx.spritepack"

local main = class{}

function main:ctor()
    spritepack.import("assets/main1")
    spritepack.import("assets/main1")
end

function main:update(dt)
    suit.layout:reset()
    suit.Button("clicked", suit.layout:row(200, 30))
end

function main:draw()
    suit.draw()
    spritepack.draw("bat1.png", 200, 300)
end

return main

