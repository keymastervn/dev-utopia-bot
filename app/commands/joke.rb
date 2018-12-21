module App
  module Commands
    # simple command
    class Joke < SlackRubyBot::Commands::Base
      command 'joke' do |client, data, _match|
        info = {
          real_name: client.store.users[data.user]['real_name']
        }

        message = JokeService.new(info).result
        client.say(channel: data.channel, text: "<#{message[:title_link]}/|#{message[:title]}>\n" \
          "#{message[:alt]}" \
          "> #{message[:image_url]}"
        )
      end
    end
  end
end
