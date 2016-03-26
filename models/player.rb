require( 'pg' )
require_relative 'sqlrunner.rb'

class Player 

  attr_reader :name, :id

  def initialize( params )
    @name = params['name'].downcase
    @id = params['id']
  end

  def save
    sql = "INSERT INTO Players (name) VALUES ('#{@name}');"
    SqlRunner.run( sql )
    # return last_entry()
  end

  # def update()
  #   sql = "UPDATE Players SET name='#{@name}' WHERE id = #{@id}"
  #   SqlRunner.run( sql )
  #   return last_entry()
  # end

  # def last_entry
  #   sql = "SELECT * FROM Players ORDER BY id DESC limit 1;"
  #   return Player.map_item(sql)
  # end


  def self.find( id )
    sql = "SELECT * FROM Players WHERE id = #{id}"
    result = Player.map_item( sql )
    return result
  end

  def self.all()
    sql = "SELECT * FROM Players"
    return Player.map_items(sql)
  end

  # def self.destroy( id )
  #   sql = "DELETE FROM Players WHERE id = '#{id}'"
  #   SqlRunner.run(sql)
  # end

  # def self.delete_all 
  #   sql = "DELETE FROM Players"
  #   SqlRunner.run(sql)
  # end


  def self.map_item(sql)
    result = Player.map_items(sql)
    return result.first
  end  

  def self.map_items(sql)
    player = SqlRunner.run(sql)
    result = player.map { |player| Player.new( player ) }
    return result
  end
  
end