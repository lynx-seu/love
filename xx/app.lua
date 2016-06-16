local gs        = require "hump.gamestate"

local app = {}
local scenedir = "scene"

function app.setSceneDir(dir)
    scenedir = dir
end

function app.run(start, ...)
    gs.registerEvents()
    app.show(start, ...)
end

function app.show(scene, ...)
    local to_class = require(scenedir.."." .. scene)
    gs.switch(to_class(...))
end


return app

