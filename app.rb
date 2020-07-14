require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do

    erb :user_input
    end

    post '/piggyit' do
        
       new_thing = PigLatinizer.new
       @results = new_thing.piglatinize(params[:user_phrase])
    erb :results
    end

end