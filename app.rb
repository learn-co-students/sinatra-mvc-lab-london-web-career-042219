require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    get '/piglatinize' do
        erb :user_input
    end

    post '/piglatinize' do 

        @user_phrase=params[:user_phrase]
        @textobj=PigLatinizer.new(@user_phrase)
        @textpiglatin=@textobj.piglatinize

        erb :piglatinize

    end
end