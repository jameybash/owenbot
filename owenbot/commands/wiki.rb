module Owenbot
  module Commands
    class Wiki < SlackRubyBot::Commands::Base
      require 'wikipedia'

      command 'wiki', 'what is', 'who is', 'tell me about', 'what do you know about', 'what can you tell me about' do |client, data, match|
        page = Wikipedia.find(match[:expression].gsub(/\?.*/, ''))
        text = if !page.summary.nil?
                 page.summary&.split("\n", 2)[0]
               else
                 "I couldn't find anything about that. Can you ask a different way?"
               end
        client.say(channel: data.channel, text: text)
      end

      scan('weird fact') do |client, data, stocks|
        page = Wikipedia.find_random
        text = "I'll tell you a weird fact about #{page.title}! \n\n #{page.summary}"
        client.say(channel: data.channel, text: text)
      end
    end
  end
end
