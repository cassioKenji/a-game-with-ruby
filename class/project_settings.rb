# project settings
class ProjectSettings
  attr_reader :settings

  def initialize
    @settings = YAML.load_file("./project_settings.yml").freeze
  end

  @@instance = ProjectSettings.new

  def self.instance
    @@instance
  end

  private_class_method :new
end
