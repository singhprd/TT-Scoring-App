require ('sinatra');
require ('sinatra/contrib/all');
require ('pry-byebug');
require_relative ('controllers/match_controller');
require_relative ('controllers/player_controller');
require_relative ('models/player');
require_relative ('models/match');

get '/' do
  @players = Player.all
  @matches = Match.all
  erb :'/homepage'
end
