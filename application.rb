require 'slack-ruby-bot'
require 'app/bot'

Dir[File.join(__dir__, '/app/**/*.rb')].each do |file|
  require file
end
