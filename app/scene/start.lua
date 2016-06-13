local BASE = (...):match('(.-)[^%.]+$')
local UPDIR = BASE:match('(.-)[^%.]+%.$')

local suit = require "Suit"
local class = require "xx.class"
local basescene = require (UPDIR.."basescene")

local start = class(basescene)

function start:ctor()
end

function start:update(dt)
    if suit.Button("Hello, World!", 100,100, 300,30).hit then
        self:show("main")
    end
end

function start:draw()
    self:drawbg("assets/bg.jpg")
    love.graphics.setColor(255, 0, 0)
    love.graphics.setPointSize(5)
    local w, h = love.graphics.getDimensions()
    love.graphics.points(w/2, h/2)
    love.graphics.setColor(255, 255, 255)

    suit.draw()
end

function start:keyreleased(key, code)
    print(key)
end

return start

