local BASE = (...):match('(.-)[^%.]+$')

local app = {}
local gs        = require "hump.gamestate"
local config    = require (BASE .. "config")

function app.run(...)
    gs.registerEvents()
    local start = config.start or "start"
    app.show(start, ...)
end

function app.show(scene, ...)
    local scenedir = config.scenedir or "scene" 
    local to_class = require(BASE .. scenedir .. scene)
    gs.switch(to_class(...))
end

return app
