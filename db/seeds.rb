require_relative( '../models/player' )
require_relative( '../models/match' )

player1 = Player.new({ 'name' => 'Bruce' })
player1 = player1.save

player2 = Player.new({ 'name' => 'Peter' })
player2.save
