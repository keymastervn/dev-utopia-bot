require 'slack-ruby-bot'
require 'app/bot'

Dir.glob('./app/{helpers,controllers,commands,uncommands,services}/*.rb').each { |file| require file }

Dir[File.join(__dir__, '/app/**/*.rb')].each do |file|
  require file
end
