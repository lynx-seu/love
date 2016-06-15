-- disable create unexpected global variable
setmetatable(_G, {
    __newindex = function(_, name, value)
        local msg = "USE 'cc.exports.%s = value' INSTEAD OF SET GLOBAL VARIABLE"
        error(string.format(msg, name), 0)
    end
})



-- enum
local scenedir = "scene"
local start    = "start"
local res_dir  = "assets/"

local landscape = false
local rw, rh = 800, 1280
-- resource size
local lg = love.graphics
local w, h = lg.getDimensions()

if w > h then
    landscape = true
    rw, rh = rh, rw
end
local sx, sy = w/rw, h/rh

local rx, ry
if sx > sy then
    rx, ry = sy/sx, 1
else
    rx, ry = 1, sx/sy
end

-- game resource
local GAME_RES = {
    "main1",
    "main2",
    "enemy",
}


return {
    _res_dir  = res_dir,
    _scenedir = scenedir,
    _start    = start,

    _rw = rw, _rh = rh,
    _sx = sx, _sy = sy,
    _rx = rx, _ry = ry,

    _gameres = GAME_RES
}
