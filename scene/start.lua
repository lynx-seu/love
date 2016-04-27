local start = {}
--local image = love.graphics.newImage("assets/gear.png")
--local imagedata = image:getData()
--local file = io.open("assets/gear", "ab")
--file:write(imagedata:getString())

local file = io.open("assets/gear", "rb")


function start:draw()
    love.graphics.print("Press Enter to continue", 10, 10)
    love.graphics.draw(image, 400, 330)
end

function start:keyreleased(key, code)
    print(key)
end

return start
