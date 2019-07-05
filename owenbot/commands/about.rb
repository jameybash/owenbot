module Owenbot
  module Commands
    class Default < SlackRubyBot::Commands::Base
      match(/^(?<bot>\w*)$/) do |client, data, _match|
        client.say(channel: data.channel, text: Owenbot::ABOUT, gif: 'math')
      end

      command 'about' do |client, data, _match|
        client.say(channel: data.channel, text: Owenbot::ABOUT, gif: 'math')
      end
    end
  end
end
