module Owenbot
  module Commands
    class Wikipedia < SlackRubyBot::Commands::Base
      command 'wiki', 'what is' do |client, data, match|
        client.say(channel: data.channel, text: "This will search wikipedia for #{match[:expression]}")
      end
    end
  end
end
