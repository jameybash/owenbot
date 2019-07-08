require 'spec_helper'

describe Owenbot::Commands::Default do
  let(:app) { Owenbot::Bot.instance }
  it 'owenbot' do
    expect(message: 'owenbot').to respond_with_slack_message(Owenbot::ABOUT)
  end
  it 'Owenbot' do
    expect(message: 'Owenbot').to respond_with_slack_message(Owenbot::ABOUT)
  end
end
