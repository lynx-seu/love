local xx = require "xx"
local app, env = xx.app, xx.env

-- love module
function love.load()
    env.setResolutionSize(800, 1280)
    print(env.getScale())

    app.setSceneDir("scene")
    app.run("test")
end

