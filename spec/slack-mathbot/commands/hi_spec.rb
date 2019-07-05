require 'spec_helper'

describe SlackRubyBot::Commands::Hi do
  let(:app) { Owenbot::Bot.instance }
  it 'says hi' do
    expect(message: 'owenbot hi').to respond_with_slack_message('Hi <@user>!')
  end
end
