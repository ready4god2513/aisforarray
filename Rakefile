require "bundler/setup"
begin
  require "heroku_san"
  config_file = File.join(File.expand_path(File.dirname(__FILE__)), 'config', 'heroku.yml')
  HerokuSan.project = HerokuSan::Project.new(config_file, :deploy => HerokuSan::Deploy::Sinatra)
  load "heroku_san/tasks.rb"
rescue LoadError
  # The gem shouldn't be installed in a production environment
end