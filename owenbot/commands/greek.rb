module Owenbot
  module Commands
    class Greek < SlackRubyBot::Commands::Base
      require 'google/cloud/translate'

      command 'how do you say' do |client, data, match|
        query = match[:expression].gsub(/\?.*/, '')

        translate = Google::Cloud::Translate.new project: ENV['TRANSLATE_PROJECT']

        translation = translate.translate query, to: "el"

        client.say(channel: data.channel, text: "\"#{query}\" in greek is \"#{translation.text}\"")
      end
    end
  end
end
