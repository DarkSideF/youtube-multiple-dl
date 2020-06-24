require 'yaml'
require 'logger'
require 'active_record'

class Database
  def self.connect
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ActiveRecord::Base.logger.level = Logger::INFO
    ActiveRecord::Base.establish_connection(config)
  end

  private

  def self.config
    YAML::load(File.open('db/config.yml'))[ENV["environment"]]
  end
end
