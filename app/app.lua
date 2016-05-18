local BASE = (...):match('(.-)[^%.]+$')

local app = {}
local gs        = require "hump.gamestate"
local config    = require (BASE .. "config")

local all_callbacks = {"show"}
local function registerFunc(class)
    for i=1, #all_callbacks do
        local ss = all_callbacks[i]
        if not class[ss] then
            class[ss] = function (class, ...)
                return app[ss](...)
            end
        end
    end
end

function app.run(...)
    gs.registerEvents()
    app.show(config.start, ...)
end

function app.show(scene, ...)
    local to = require(config.scenedir .. scene)
    registerFunc(to)
    gs.switch(to())
end

return app
