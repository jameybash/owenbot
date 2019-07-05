$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'owenbot'
require 'web'

SlackRubyBot::Client.logger.level = Logger::INFO

Thread.new do
  Owenbot::Bot.run
rescue Exception => e
  STDERR.puts "ERROR: #{e}"
  STDERR.puts e.backtrace
  raise e
end

run Owenbot::Web
