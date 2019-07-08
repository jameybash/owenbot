module Owenbot
  module Commands
    class Unknown < SlackRubyBot::Commands::Base
      match(/^(?<bot>\S*)[\s]*(?<expression>.*)$/) do |client, data, _match|
        # Do nothing, because I don't want Owenbot to respond to stuff that's not a real command
      end
    end
  end
end
