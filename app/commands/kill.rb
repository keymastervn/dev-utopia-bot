module App
  module Commands
    # simple command
    class Kill < SlackRubyBot::Commands::Base
      command 'kill -9' do |client, data, _match|
        message = JokeService.new.result
        client.say(channel: data.channel, thread_ts: data.thread_ts, text: "I am so sad of you <@#{data.user}> :cry:")
        client.say(channel: data.channel, thread_ts: data.thread_ts, text: "(commit suicide)")
        exit
      end
    end
  end
end
