module Owenbot
  module Commands
    class Help < SlackRubyBot::Commands::Base
      command 'help' do |client, data, _match|
        client.say(channel: data.channel, text: 'I do not have a help guide set up yet. You are on your own.', gif: 'help')
      end
    end
  end
end
