$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'figaro'

require 'app'
require 'web'

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
