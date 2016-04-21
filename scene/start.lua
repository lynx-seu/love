local start = {}

function start:draw()
    love.graphics.print("Press Enter to continue", 10, 10)
end

function start:keyreleased(key, code)
    print(key)
end

return start
