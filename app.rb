require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        pig = PigLatinizer.new
        @user_input = pig.pig_latin(params[:user_phrase])

        erb :display
    end


end