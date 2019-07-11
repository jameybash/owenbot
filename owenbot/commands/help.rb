module Owenbot
  module Commands
    class Help < SlackRubyBot::Commands::Base
      command 'help' do |client, data, _match|
        help_text = "My name is Owenbot! I will try to help answer your questions for you! \n\n"
        help_text += "If you want me to look up some information for you, say _owenbot tell me about [your query]_ \n\n"
        help_text += "I can help you practice your greek! Say _owenbot how do you say [the word you'd like to translate]_ \n\n"
        help_text += "I'm still a baby and I don't know a lot of phrases yet, but I'm still learning!"
        client.say(channel: data.channel, text: help_text, gif: 'help')
      end
    end
  end
end
