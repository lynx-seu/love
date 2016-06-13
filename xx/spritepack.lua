local lg = love.graphics

local pack_pool = {}
local quad_pool = {}

local spritepack = {}

function spritepack.import(name)
    assert(not pack_pool(name), string.format("pack [%s] is exist",  name))

    local img  = lg.newImage(name ..'.png')
    local data = require(name).getSpriteSheetData().frames
    for i=1, #data do
        local frame = data[i]
        local n1 = frame.name
        local rect = frame.textureRect
        
        assert(not quad_pool[n1], string.format("sprite [%s] is exist", n1))
        quad_pool[n1] = {img = img, rect=rect}
    end

    pack_pool[name] = img
end

function spritepack.remove(name)
    assert(pack_pool[name], string.format("pack [%s] not import", name))

    local data = require(name).getSpriteSheetData().frames
    for i=1, #data do
        local n1 = data[i].name
        quad_pool[n1] = nil
    end

    pack_pool[name] = nil
end

function spritepack.draw(sprite, ...)
    assert(quad_pool[sprite], string.format("sprite [%s] is not exist", sprite))
    local img = quad_pool[sprite].img
    local rect = quad_pool[sprite].img

    local quad = lg.newQuad(rect.x, rect.y, rect.width, rect.height, img:getDimensions())
    lg.draw(img, quad, ...)
end

return spritepack
