require 'sinatra/base'

module App
  # make it live using puma
  class Web < Sinatra::Base
    get '/' do
      "C'est lavie"
    end
  end
end
