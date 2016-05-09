local start = {}

function start:draw()
    love.graphics.print("test")
end

function start:keyreleased(key, code)
    print(key)
end

return start
