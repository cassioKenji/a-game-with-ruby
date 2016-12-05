require "gosu"
require "yaml"
require "pry"
require_relative "class/player"

# game's main class
class Main < Gosu::Window
  def initialize
    super 640, 480 # , :fullscreen => true
    @settings = YAML.load_file("project_settings.yml").freeze
    self.caption = @settings[:game_name]
    @bg = Gosu::Image.new("#{@settings[:images][:bg]}space_bg.png",
                          tileable: true)
    @font = Gosu::Font.new(20)
    @player = Player.new
  end

  def update
    if Gosu::button_down? Gosu::KbLeft or Gosu::button_down? Gosu::GpLeft then
      @player.left
    end
    if Gosu::button_down? Gosu::KbRight or Gosu::button_down? Gosu::GpRight then
      @player.right
    end
    if Gosu::button_down? Gosu::KbUp or Gosu::button_down? Gosu::GpLeft then
      @player.up
    end
    if Gosu::button_down? Gosu::KbDown or Gosu::button_down? Gosu::GpRight then
      @player.down
    end
  end

  def draw
    @bg.draw(0, 0, 0)

    @player.draw
    @font.draw(@settings, 10, 10, 10, 1.0, 1.0, 0xff_ffff00)
  end
end

window = Main.new
window.show
