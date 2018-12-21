$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'figaro'
require 'active_support/all'
require 'application'
require 'web'
require 'rss'
require 'open-uri'
require 'nokogiri'
require 'ostruct'
require 'pry'
# load env
Figaro.application = Figaro::Application.new(
  environment: 'production',
  path: File.expand_path('config/application.yml')
)
Figaro.load

Thread.abort_on_exception = true

Thread.new do
  begin
    App::Bot.run
  rescue Exception => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run App::Web
