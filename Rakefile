$:.unshift File.dirname(__FILE__)
require 'bundler'
require 'delayed/tasks'
require 'lib/youtube_multiple_dl'
require 'sqlite3'

namespace :jobs do
  task :environment do
    Database.connect
  end
end

require 'standalone_migrations'
StandaloneMigrations::Tasks.load_tasks
