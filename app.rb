require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig = PigLatinizer.new
    @old = params[:user_phrase]
    @new = pig.piglatinize(params[:user_phrase])
    erb :piglatinize
  end
end
