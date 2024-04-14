function love.load()
    --Windfield
    wf = require "librires/windfield"
    --World
    World = wf.newWorld(0,450)
    -- Player
    player = World:newRectangleCollider(350,100,80,80)
    -- Platform
    platform = World:newRectangleCollider(150,500,400,100)
    platform:setType("static") -- static platform
    -- WINDOW
    --name window
    love.window.setTitle("Flappy bird")
    -- Width and heigth window
    screen_width = 800
    screen_height = 600
    love.window.setMode(screen_width,screen_height)
end
function love.update(dt)
    -- world update
    World:update(dt)
end
function love.draw()
    -- world draw
    World:draw()
end

function love.keypressed(key)
    if key == "space" then
        player:applyLinearImpulse(0,-5000)
    end
end