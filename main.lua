-- setting variables
function love.load()
x = 100
y = 100
end
-- Moving the rectangle with the keyboard
function love.update(dt)
  if love.keyboard.isDown('w') and love.keyboard.isDown('d') then
    x = x + 60 * dt
    y = y - 60 * dt
  elseif love.keyboard.isDown('w') and love.keyboard.isDown('a') then
    x = x - 60 * dt
    y = y - 60 * dt
  elseif love.keyboard.isDown('s') and love.keyboard.isDown('d') then
    x = x + 60 * dt
    y = y + 60 * dt
  elseif love.keyboard.isDown('s') and love.keyboard.isDown('a') then
    x = x - 60 * dt
    y = y + 60 * dt
  elseif love.keyboard.isDown('w') then
    y = y - 60 * dt
  elseif love.keyboard.isDown('s') then
    y = y + 60 * dt
  elseif love.keyboard.isDown('a') then
    x = x - 60 * dt
  elseif love.keyboard.isDown('d') then
    x = x + 60 * dt
  end
end
-- drawing the rectangle
function love.draw()
  love.graphics.rectangle("line", x, y, 200, 150)
end
