local lg = love.graphics

local pack_pool = {}
local quad_pool = {}

local spritepack = {}

function spritepack.init(name)
    assert(not pack_pool(name), string.format("pack [%s] is exist",  name))

    local img  = lg.newImage(name ..'.png')
    local data = require(name).getSpriteSheetData().frames
    for i=1, #data do
        local frame = data[i]
        local name = frame.name
        local rect = frame.rect
        
    end
end

function spritepack.draw(sprite)
end

return spritepack
