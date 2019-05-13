require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    string = params[:user_phrase]
    pl = PigLatinizer.new()
    @new_string = pl.piglatinize(string)
    erb :pig_latin
  end
end
