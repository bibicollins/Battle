require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class Battle < Sinatra::Base
  attr_reader :name
   enable :sessions
get '/' do
  erb(:index)
end
  post '/names' do
    player1 = Player.new(params[:player_1])
    player2 = Player.new(params[:player_2])
    $game = Game.new(player1, player2)
    redirect('/play')
  end

get '/play' do
  @game = $game
  erb(:play)
end

get '/attack' do
  @game = $game
  @game.attack(@game.player2)
  erb(:attack)
end
end
