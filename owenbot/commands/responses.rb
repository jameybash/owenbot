module Owenbot
  module Commands
    class Responses < SlackRubyBot::Commands::Base
      command 'thank you', 'thanks' do |client, data, _match|
        client.say(channel: data.channel, text: "You're welcome!")
      end
    end
  end
end
