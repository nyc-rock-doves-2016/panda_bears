get "/decks" do
  erb :'decks/index'
end

get "/decks/new" do
  @user = User.find_by(session[:user_id])
  erb :"decks/new"
end

post "/decks" do
  @deck = Deck.new(params[:deck])
  if @deck.save!
    redirect "decks/#{@deck.id}/edit"
  else
    erb :"decks/new"
  end
end

get "/decks/:id" do
  @deck = Deck.find_by(id: params[:id])
  erb :"decks/show"
end

get "/decks/:id/edit" do
  @deck = Deck.find_by(id: params[:id])
  erb :"decks/edit"
end

get "/users/:id/decks" do
  @user = User.find_by(id: params[:id])
  erb :"users/decks"
end
