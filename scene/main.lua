
local suit = require "Suit"
local app   = require "main"
local class = require "hump.class"
local spritepack = require "xx.spritepack"
local env = require "globaldef"
local lg = love.graphics

local main = class{}

function main:ctor()
    self.font = love.graphics.newFont(55)
end

function main:draw()
    
    
end

function main:keyreleased(key, code)
    print(key)
end

return main

