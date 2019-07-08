require 'spec_helper'

describe Owenbot::Commands::Calculate do
  let(:app) { Owenbot::Bot.instance }
  it 'adds two numbers' do
    expect(message: 'owenbot calculate 2+2', channel: 'channel').to respond_with_slack_message('4')
  end
  it 'adds two numbers via =' do
    expect(message: '= 2+2', channel: 'channel').to respond_with_slack_message('4')
  end
  it 'adds two numbers via = without a space' do
    expect(message: '=2+2', channel: 'channel').to respond_with_slack_message('4')
  end
  it 'sends something without an answer' do
    expect(message: 'owenbot calculate pi', channel: 'channel').to respond_with_slack_message('Sorry, no value provided for variables: pi.')
  end
  it 'reports division by zero' do
    expect(message: 'owenbot calculate 1/0', channel: 'channel').to respond_with_slack_message('Sorry, Dentaku::ZeroDivisionError.')
  end
end
