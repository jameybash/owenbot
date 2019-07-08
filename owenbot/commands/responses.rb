module Owenbot
  module Commands
    class Responses < SlackRubyBot::Commands::Base
      command 'thank you', 'thanks' do |client, data, _match|
        client.say(channel: data.channel, text: "You're welcome!")
      end

      command 'say hi to' do |client, data, match|
        client.say(channel: data.channel, text: "Hi #{match[:expression]}!")
      end

      command 'are you awake' do |client, data, _match|
        client.say(channel: data.channel, text: "Yep, good morning!")
      end

      scan('real magic') do |client, data, stocks|
        client.say(channel: data.channel, text: "I'm not a stage magician, Carolyn.")
      end
    end
  end
end
