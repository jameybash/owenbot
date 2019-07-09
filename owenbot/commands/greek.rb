module Owenbot
  module Commands
    class Greek < SlackRubyBot::Commands::Base
      require 'google/cloud/translate'

      command 'how do you say' do |client, data, match|
        translate = Google::Cloud::Translate.new project: ENV['TRANSLATE_PROJECT']

        translation = translate.translate match[:expression], to: "el"

        client.say(channel: data.channel, text: "\"#{match[:expression]}\" in greek is \"#{translation.text}\"")
      end
    end
  end
end
