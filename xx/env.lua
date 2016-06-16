-- disable create unexpected global variable
setmetatable(_G, {
    __newindex = function(_, name, value)
        local msg = "[warnning] '%s ' IS GLOBAL VARIABLE"
        error(string.format(msg, name), 0)
    end
})

local lg = love.graphics
local _w, _h = lg.getDimensions()
local landscape = (_w > _h)
local _rw, _rh = _w, _h

-- env module
local env = {}

function env.isLandscape() 
    return landscape
end

function env.setResolutionSize(rw, rh)
    local max, min = rw, rh
    if max < min then max, min = min, max end
    if landscape then
        _rw, _rh = max, min
    else
        _rw, _rh = min, max
    end
end

function env.getScale()
    return _w / _rw, _h / _rh
end


return env
