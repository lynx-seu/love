local BASE = (...):match('(.-)[^%.]+$')
--local spritepack = require (BASE .. "spritepack")

---------------------------------------------------- 
-- sprite info
---------------------------------------------------- 
local sprite = {}
sprite.__index = sprite

local function new()
    return setmetatable(o, sprite)
end
