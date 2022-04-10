require("dslayout")
function love.load()
  dslayout:init({
    color = { r = 0.2, g = 0.2, b = 0.25, a = 1 },
    title = "3DS Demo"
  })
  touchx = -10
  touchy = -10
end

function love.draw(screen)
  dslayout:draw(screen, function()
    love.graphics.print("Top Screen")
  end,function()
    love.graphics.print("Bottom Screen")
    if(touchx > 0 and touchy > 0) then
      love.graphics.print("X: "..touchx,0,20)
      love.graphics.print("Y: "..touchy,0,40)
      love.graphics.setColor(1, 0, 0)
      love.graphics.circle("fill", touchx, touchy, 5)
      love.graphics.setColor(1, 1, 1)
    end
  end)
end

function love.gamepadpressed(joystick, button)
  love.event.quit()
end

function love.touchmoved(id,x,y,dx,dy,pressure)
  touchx = x;
  touchy = y;
end

function love.mousemoved(x,y,dx,dy,istouch)
  dslayout:mousemoved(x,y,dx,dy,istouch)
end

function love.mousepressed(x, y, button, istouch, presses)
  dslayout:mousepressed(x, y, button, istouch, presses)
end

function love.mousereleased(x, y, button, istouch, presses)
  dslayout:mousereleased(x, y, button, istouch, presses)
end
