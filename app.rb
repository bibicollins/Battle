require 'sinatra/base'
require './lib/player.rb'
class Battle < Sinatra::Base
  attr_reader :name
   enable :sessions
get '/' do
  erb(:index)
end
  post '/names' do
    $player1 = Player.new(params[:player_1])
    $player2 = Player.new(params[:player_2])
    redirect('/play')
  end

get '/play' do
  @player1 = $player1.name
  @player2 = $player2.name
  erb(:play)
end

get '/attack' do
  @player1 = $player1
  @player2 = $player2
  Game.new.attack(@player2)
  erb(:attack)
end
end
