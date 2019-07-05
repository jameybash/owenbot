require 'sinatra/base'

module Owenbot
  class Web < Sinatra::Base
    get '/' do
      "I'm not a stage magician, Carolyn."
    end
  end
end
