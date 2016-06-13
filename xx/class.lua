local _class = {}

local function class(super)
    local class_type = {}
    class_type.ctor = false
    class_type.super = super
    class_type.new = function(...)
        local obj = {}
        setmetatable(obj, _class[class_type])
        do
            local create
            create = function(c, ...)
                if c.super then
                    create(c.super, ...)
                end
                if c.ctor then
                    c.ctor(obj, ...)
                end
            end
            create(class_type, ...)
        end
        return obj
    end
    local vtbl = {}
    vtbl.__index = vtbl
    _class[class_type] = vtbl

    setmetatable(class_type, {
        __newindex = function(_, k, v)
            vtbl[k] = v
        end,
        __index = function(_, k)
            return vtbl[k]
        end,
        __call = function(_, ...)
            return class_type.new(...)
        end
    })

    if super then
        setmetatable(vtbl, {
            __index = function (t, k)
                local ret = _class[super][k]
                vtbl[k] = ret
                return ret
            end
        })
    end

    return class_type
end

return setmetatable({new = class}, {
    __call = function(_, ...)
        return class(...)
    end,
})

