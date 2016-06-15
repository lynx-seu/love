local BASE = (...):match('(.-)[^%.]+$')

local gs        = require "hump.gamestate"
local config    = require "globaldef"

local lg = love.graphics

-- app instance
local app = {}

function app.run(...)
    gs.registerEvents()
    local start = config._start or "start"
    app.show(start, ...)
end

function app.show(scene, ...)
    local scenedir = config._scenedir or "scene" 
    local to_class = require(BASE .. scenedir.."." .. scene)
    gs.switch(to_class(...))
end

-- love module
function love.load()
    app.run()
end

function love.draw()
    lg.scale(config._sx, config._sy)
end


return app
