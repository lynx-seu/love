local GS = require "hump.gamestate"
local scenedir = "scene"

function love.load()
    GS.registerEvents()
    local start = require(scenedir .. "." .. "start")
    GS.switch(start)
end

