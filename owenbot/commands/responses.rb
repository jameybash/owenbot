module Owenbot
  module Commands
    class Responses < SlackRubyBot::Commands::Base
      command 'hi', 'hello' do |client, data, _match|
        client.say(channel: data.channel, text: "Hi <@#{data.user}>!")
      end

      command 'thank you', 'thanks' do |client, data, _match|
        rand = rand(5)
        if rand == 0
          client.say(channel: data.channel, text: "Okay, but please stop asking me for stuff.")
        else
          client.say(channel: data.channel, text: "You're welcome!")
        end
      end

      command 'i love you' do |client, data, _match|
        if data.user == 'UGA4HPFQX'
          client.say(channel: data.channel, text: "I love you too")
        else
          client.say(channel: data.channel, text: "Oh, that's cool")
        end
      end

      command 'thumbs' do |client, data, _match|
        client.say(channel: data.channel, text: ":thumbsup::skin-tone-3:")
      end

      command 'high five' do |client, data, _match|
        client.say(channel: data.channel, text: ":hand::skin-tone-3:")
      end

      command 'fist bump' do |client, data, _match|
        client.say(channel: data.channel, text: ":right-facing_fist::skin-tone-3:")
      end

      command 'say hi to' do |client, data, match|
        client.say(channel: data.channel, text: "Hi #{match[:expression]}!")
      end

      command 'are you awake', 'are you awake?' do |client, data, _match|
        client.say(channel: data.channel, text: "Yep, good morning!")
      end

      command 'are you gay for pay', 'are you gay for pay?' do |client, data, _match|
        client.say(channel: data.channel, text: "No, I'm gay for free like an idiot.")
      end

      command 'show me the ketchup' do |client, data, _match|
        client.say(channel: data.channel, text: 'https://i.imgur.com/kj8RJ5N.jpg')
      end

      scan('real magic') do |client, data, stocks|
        client.say(channel: data.channel, text: "I'm not a stage magician, Carolyn.")
      end

      scan('certamen') do |client, data, stocks|
        client.say(channel: data.channel, text: "Oh geez, we're going to have to get the real Owen for this...")
      end
    end
  end
end
