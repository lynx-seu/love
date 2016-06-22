local BASE = (...):match('(.-)[^%.]+$')
local log = require(BASE .. 'log')

local lg = love.graphics

local pack_pool = {}
local quad_pool = {}

local function parse_iter(plist)
    local data = require(plist).getSpriteSheetData().frames
    local i, n = 0, #data
    return  function()
        i = i + 1
        if i <= n then
            local frame = data[i]
            local name = frame.name
            local rect = frame.textureRect
            return name, rect
        end
    end
end

local spritepack = {}

function spritepack.import(plist)
    if pack_pool[plist] then
        return log.warn(string.format("pack [%s] is exist",  plist))
    end

    if love.filesystem.exists(plist ..'.png') then
        local img  = lg.newImage(plist ..'.png')
        local imgw, imgh = img:getDimensions()

        for name, rect in parse_iter(plist) do
            local x,y,w,h = rect.x, rect.y, rect.width, rect.height
            local quad = lg.newQuad(x,y,w,h, imgw, imgh)
            if quad_pool[name] then log.warn(string.format("sprite [%s] is exist", name)) end
            quad_pool[name] = {plist=plist, quad=quad}
        end

        pack_pool[plist] = img
    else
        log.error(string.format("[%s.png] is not exist", plist))
    end
end

function spritepack.remove(plist)
    if not pack_pool[plist] then return end

    for n in parse_iter(plist) do
        quad_pool[n] = nil
    end

    pack_pool[plist] = nil
end

function spritepack.draw(sprite, ...)
    if not quad_pool[sprite] then
        return  log.error(string.format("sprite [%s] is not exist", sprite))
    end
    local plist = quad_pool[sprite].plist
    local img   = pack_pool[plist]
    local quad  = quad_pool[sprite].quad

    lg.draw(img, quad, ...)
end

return spritepack
