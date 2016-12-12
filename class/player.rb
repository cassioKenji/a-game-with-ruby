# the player
class Player
  def initialize
    @sprite = Gosu::Image.new("#{ProjectSettings.instance.settings[:images][:sprites]}starfighter.png")
    @x = @y = @vel_x = @vel_y = @angle = 0.0
    @rnd_y = Random.new
  end

  def draw
    @sprite.draw_rot(@x, @y, 1, @angle)
  end

  def left
    @angle -= 5
    @x -= 10
  end

  def right
    @angle += 5
    @x += 10
  end

  def up
    @angle += 5
    @y -= 10
  end

  def down
    @angle -= 5
    @y += 10
  end
end
