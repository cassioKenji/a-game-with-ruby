require "gosu"
require "yaml"
require "pry"

# game's main class
class Main < Gosu::Window
  def initialize
    @config = YAML.load_file("project_settings.yml")
    super 640, 480 # , :fullscreen => true
    self.caption = @config[:game_name]
    @bg = Gosu::Image.new("#{@config[:images][:bg]}space_bg.png",
                          tileable: true)
    @font = Gosu::Font.new(20)
  end

  def update
  end

  def draw
    @bg.draw(0, 0, 0)

    @font.draw(@config, 10, 10, 10, 1.0, 1.0, 0xff_ffff00)
  end
end

window = Main.new
window.show
