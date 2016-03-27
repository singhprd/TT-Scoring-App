get '/matches/new' do
  @players = Player.all
  erb :'matches/new'
end

get '/matches' do
  @matches = Match.all
  erb :'matches/index'
end

post '/matches' do
  match = Match.new(params)
  match.save( )
  redirect '/matches'
end

get '/matches/:id' do
  id = params['id']
  @match = Match.find(id)
  @player_winner = Player.find(@match.player_winner) 
  @player_looser = Player.find(@match.player_looser) 
  erb :'matches/show'
end

get '/matches/:id/edit' do
  id = params[:id]
  @match = Match.find(id)
  @players = Player.all  
  erb :'matches/edit'
end

post '/matches/:id/delete' do
  Match.destroy( params[:id] )
  redirect '/matches'
end

