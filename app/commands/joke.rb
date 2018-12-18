module App
  module Uncommands
    # simple command
    class Joke < SlackRubyBot::Commands::Base
      command ':D' do |client, data, _match|
        message = JokeService.new.result

        client.say(channel: data.channel, text: message)
      end
    end
  end
end
