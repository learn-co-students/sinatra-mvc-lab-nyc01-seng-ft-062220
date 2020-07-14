require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        test1 = PigLatinizer.new
        @string_piglatinized = test1.piglatinize(params["user_phrase"])

        erb :results

    end
end