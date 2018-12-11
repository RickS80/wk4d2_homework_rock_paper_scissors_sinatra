require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')
require_relative('models/rps_model')
also_reload('./models/*')


get '/game/:hand1/:hand2' do
  RPSGame.check_win(params[:hand1], params[:hand2])
end
