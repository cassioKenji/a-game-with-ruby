require 'gosu'

class Main < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "A Game tih Gosu"
  end

  def update
  end

  def draw
  end
end

window = Main.new
window.show