$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'owenbot'
require 'web'

SlackRubyBot::Client.logger.level = Logger::INFO

Thread.new do
  begin
    Owenbot::Bot.run
  rescue Exception => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run Owenbot::Web
