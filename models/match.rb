require( 'pg' )
require_relative 'sqlrunner.rb'

class Match  

  attr_reader :id, :player_winner, :player_looser, :winner_points, :looser_points

  def initialize( params )
    @id = params['id']
    @player_winner = params['player_winner']
    @player_looser = params['player_looser']
    @winner_points = params['winner_points']
    @looser_points = params['looser_points']
  end

  def save
    sql = "INSERT INTO Matches (player_winner, player_looser, winner_points, looser_points ) VALUES ('#{@player_winner}', '#{@player_looser}', '#{@winner_points}', '#{looser_points}');"

    SqlRunner.run( sql )
    # return last_entry()
  end

  # def update()
  #   sql = "UPDATE Matches SET name='#{@name}' WHERE id = #{@id}"
  #   SqlRunner.run( sql )
  #   return last_entry()
  # end

  # def last_entry
  #   sql = "SELECT * FROM Matches ORDER BY id DESC limit 1;"
  #   return Player.map_item(sql)
  # end


  def self.find( id )
    sql = "SELECT * FROM Matches WHERE id = #{id}"
    result = Match.map_item( sql )
    return result
  end

  def self.all()
    sql = "SELECT * FROM Matches"
    return Match.map_items(sql)
  end

  def self.destroy( id )
    sql = "DELETE FROM Matches WHERE id = '#{id}'"
    SqlRunner.run(sql)
  end

  def self.delete_all 
    sql = "DELETE FROM Matches"
    SqlRunner.run(sql)
  end


  def self.map_item(sql)
    result = Match.map_items(sql)
    return result.first
  end  

  def self.map_items(sql)
    match = SqlRunner.run(sql)
    result = match.map { |match| Match.new( match ) }
    return result
  end
  
end