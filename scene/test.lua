local class = require "hump.class"
local suit  = require "SUIT"

local function myStencilFunction()
    love.graphics.rectangle("fill", 225, 200, 350, 300)
end
 
local test = class{}

function test:ctor()
end

function test:update(dt)
end

function test:draw()
    -- draw a rectangle as a stencil. Each pixel touched by the rectangle will have its stencil value set to 1. The rest will be 0.
    love.graphics.stencil(myStencilFunction, "replace", 1)
 
   -- Only allow rendering on pixels which have a stencil value greater than 0.
    love.graphics.setStencilTest("greater", 0)
 
    love.graphics.setColor(255, 0, 0, 120)
    love.graphics.circle("fill", 300, 300, 150, 50)
 
    love.graphics.setColor(0, 255, 0, 120)
    love.graphics.circle("fill", 500, 300, 150, 50)
 
    love.graphics.setColor(0, 0, 255, 120)
    love.graphics.circle("fill", 400, 400, 150, 50)
 
    love.graphics.setStencilTest()
end

return test
