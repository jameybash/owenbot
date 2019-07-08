RSpec.configure do |config|
  config.before do
    SlackRubyBot.config.user = 'owenbot'
  end
end
