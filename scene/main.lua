
local suit = require "Suit"
local app   = require "main"
local class = require "hump.class"
local spritepack = require "xx.spritepack"
local lg = love.graphics

local main = class{}

function main:ctor()
end

function main:draw()
    
    
end

function main:keyreleased(key, code)
    print(key)
end

return main

