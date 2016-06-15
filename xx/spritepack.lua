local lg = love.graphics

local pack_pool = {}
local quad_pool = {}

local spritepack = {}

function spritepack.import(name)
    assert(not pack_pool[name], string.format("pack [%s] is exist",  name))

    if love.filesystem.exists(name ..'.png') then
        local img  = lg.newImage(name ..'.png')
        local imgw, imgh = img:getDimensions()
        local data = require(name).getSpriteSheetData().frames
        for i=1, #data do
            local frame = data[i]
            local n1 = frame.name
            local rect = frame.textureRect

            --rect convert
            --rect.y = imgh - rect.y - rect.height

            local quad = lg.newQuad(rect.x, rect.y, rect.width, rect.height, imgw, imgh)
            assert(not quad_pool[n1], string.format("sprite [%s] is exist", n1))
            quad_pool[n1] = {img = img, rect=rect, quad=quad}
        end

        pack_pool[name] = img
    end
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
    local img  = quad_pool[sprite].img
    local quad = quad_pool[sprite].quad
    local rect = quad_pool[sprite].rect

    lg.draw(img, quad, ...)
    return rect.width, rect.height
end

return spritepack
