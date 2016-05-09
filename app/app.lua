local BASE = (...):match('(.-)[^%.]+$')

local app = {}
local gs        = require "hump.gamestate"
local config    = require (BASE .. "config")

function app.run(...)
    gs.registerEvents()
    app.show(config.start, ...)
end

function app.show(scene, ...)
    local to = require(config.scenedir .. scene)
    gs.switch(to, ...)
end

return app
