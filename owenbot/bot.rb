module Owenbot
  class Bot < SlackRubyBot::Bot
    SlackRubyBot.configure do |config|
      config.aliases = ['okay-owen', 'ok-owen', 'overwatch']
    end
  end
end
