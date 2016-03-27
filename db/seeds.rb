require_relative( '../models/player' )
require_relative( '../models/match' )

Match.delete_all
Player.delete_all

player1 = Player.new({ 'name' => 'Bruce' })
player1 = player1.save

player2 = Player.new({ 'name' => 'Peter' })
player2 = player2.save

player3 = Player.new({ 'name' => 'James' })
player3 = player3.save

player4 = Player.new({ 'name' => 'Carl' })
player4 = player4.save

player5 = Player.new({ 'name' => 'Lenny' })
player5 = player5.save

params = {'player_winner' => "#{player1.id}", 'player_looser' => "#{player2.id}", 'winner_points' => 11, 'looser_points' => 2 }
match1 = Match.new(params)
match1.save

params = {'player_winner' => "#{player2.id}", 'player_looser' => "#{player1.id}", 'winner_points' => 11, 'looser_points' => 9 }
match1 = Match.new(params)
match1.save

params = {'player_winner' => "#{player5.id}", 'player_looser' => "#{player3.id}", 'winner_points' => 11, 'looser_points' => 3 }
match1 = Match.new(params)
match1.save

params = {'player_winner' => "#{player2.id}", 'player_looser' => "#{player3.id}", 'winner_points' => 11, 'looser_points' => 5 }
match1 = Match.new(params)
match1.save

params = {'player_winner' => "#{player5.id}", 'player_looser' => "#{player2.id}", 'winner_points' => 11, 'looser_points' => 8 }
match1 = Match.new(params)
match1.save

params = {'player_winner' => "#{player1.id}", 'player_looser' => "#{player2.id}", 'winner_points' => 11, 'looser_points' => 8 }
match1 = Match.new(params)
match1.save

