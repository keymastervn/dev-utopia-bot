module App
  module Commands
    # simple command
    class CodingChallenge < SlackRubyBot::Commands::Base
      command 'give us a coding challenge' do |client, data, _match|
        client.say(channel: data.channel, text: 'everyone, stay calm...')
        client.say(channel: data.channel, text: '===================')
        client.say(channel: data.channel, text: `leetcode show -q e -l ruby`)
        client.say(channel: data.channel, text: '===================')
        client.say(
          channel: data.channel,
          text: "*Deadline:* #{1.hour.from_now}"
        )
      end
    end
  end
end
