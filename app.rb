require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @user_input = params[:user_phrase]

        @latinized_text = PigLatinizer.new

        # "#{latinized_text.piglatinize(@user_input)}"

        erb :response
    end
end