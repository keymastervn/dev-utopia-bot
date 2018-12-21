module App
  class Bot < SlackRubyBot::Bot
    help do
      title 'Slack Bot'
      desc 'This bot is your servant, lol'

      command 'hello' do
        desc 'Nice to meet you'
        long_desc "If you say hello to me for the first time, I say hello to you.\n" \
        "However, if you keep saying `hello` to me, I will find your family, your pets, your lover(s),\n" \
        "your friends... and I will take everything away from you *muahahahaha* :smiling_imp: :smiling_imp:"
      end

      command 'joke' do
        desc 'Whenever you feel boredom, I send you joke, tickle a bit :D'
      end

      command 'give us a coding challenge' do
        desc 'start an easy challenge'
      end

      command ['til', 'today i learn'] do
        desc 'send random engineering tips to you <3'
      end

      command 'kill -9' do
        desc 'ughhh.... I diee!'
      end
    end
  end
end
