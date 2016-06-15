local suit = require "Suit"
local class = require "hump.class"
local app   = require "main"
local spritepack = require "xx.spritepack"
local global = require "globaldef"

local function LoadAllAsync(t, resdir)
    local total, index = #t, 0
    resdir = resdir or ""
    return coroutine.create(function ()
        for _, v in ipairs(t) do
            spritepack.import(resdir..v)
            index = index + 1
            coroutine.yield(index/total)
        end
    end)
end

local start = class{}

function start:ctor()
    self.percent = 0
    self.loadall_prod = LoadAllAsync(global._gameres, global._res_dir)
end

function start:update(dt)
     local status, percent = coroutine.resume(self.loadall_prod)
     self.percent = percent
     if self.percent == 1 then
         app.show("main")
     end
end

function start:draw()
    love.graphics.clear(255, 255, 255)
    love.graphics.setColor(255, 0, 255)
    love.graphics.print(tostring(self.percent))
    love.graphics.setColor(255, 255, 255)
end

function start:keyreleased(key, code)
    print(key)
end

return start

