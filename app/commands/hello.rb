module App
  module Commands
    # simple command
    class Hello < SlackRubyBot::Commands::Base
      command 'hello' do |client, data, _match|
        client.say(channel: data.channel, text: 'bonjour :awesome:')
      end
    end
  end
end
