module App
  module Commands
    # simple command
    class TIL < SlackRubyBot::Commands::Base
      command 'til', 'today i learn' do |client, data, _match|
        til_link = "https://til.hashrocket.com"
        doc = Nokogiri::HTML(open("#{til_link}/random"))
        markdown = til_link + doc.css(".post__raw-link")
          .first
          .attributes["href"].value

        client.say(channel: data.channel,
                  thread_ts: data.thread_ts,
                  text: Nokogiri::HTML(open(markdown)).content)
      end
    end
  end
end
