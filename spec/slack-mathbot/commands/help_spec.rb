require 'spec_helper'

describe Owenbot::Commands::Help do
  let(:app) { Owenbot::Bot.instance }
  it 'help' do
    expect(message: 'owenbot help').to respond_with_slack_message('See https://github.com/jameybash/owenbot, please.')
  end
end
