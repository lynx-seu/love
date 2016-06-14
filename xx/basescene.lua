local class  = require "hump.class"

local bs = class {}

function bs.getApp()
    return app
end

function bs:show(scene, ...)
    local app = self.getApp()
    app.show(scene, ...)
end



return bs
