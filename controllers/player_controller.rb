get '/players/new' do
  erb :'players/new'
end

post '/players' do
  player = Player.new( params )
  player.save()
  redirect '/players/new'
end

get '/players' do
  @players = Player.all
  erb :'/players/index'
end

get '/players/:id' do
  id = params['id']
  @player = Player.find( id )
  erb :'players/show'
end