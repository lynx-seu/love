local BASE = (...):match('(.-)[^%.]+$')

local gs        = require "hump.gamestate"
local conf      = require "conf"

-- app instance
local app = {}

function app.run(...)
    gs.registerEvents()
    local start = "start"
    app.show(start, ...)
end

function app.show(scene, ...)
    local scenedir = "scene" 
    local to_class = require(BASE .. scenedir.."." .. scene)
    gs.switch(to_class(...))
end

-- love module
function love.load()
    app.run()
end


return app
