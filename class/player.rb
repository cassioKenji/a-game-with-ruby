# the player
class Player

  def initialize
    @sprite = Gosu::Image.new("#{YAML.load_file("project_settings.yml")[:images][:sprites]}starfighter.png")
    @x = @y = @vel_x = @vel_y = @angle = 0.0
    @rnd_y = Random.new
  end

  def draw
    @sprite.draw_rot(@x, @rnd_y.rand(10), 1, @angle)
  end

  def turn_left
    @angle -= 5
    @x -=10
  end

  def turn_right
    @angle += 5
    @x +=10
  end
end
