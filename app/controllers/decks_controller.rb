get "/decks" do
  erb :'decks/index'
end

get "/decks/new" do
  @user = User.find_by(id: session[:user_id])
  erb :"decks/new"
end

post "/decks" do
  @deck = Deck.new(params[:deck])
  if @deck.save!
    redirect "decks/#{@deck.id}/edit"
  else
    @errors = @user.errors.full_messages
    redirect '/decks/new'
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

put "/decks/:id" do
  @deck = Deck.find_by(id: params[:id])
  @deck.assign_attributes(params[:deck])
  @errors = @user.errors.full_messages unless @deck.save
  redirect "/decks/#{@deck.id}/edit"

end

delete "/decks/:id" do
  @deck = Deck.find_by(id: params[:id])
  @deck.cards.each {|card| card.destroy}
  @deck.destroy
  redirect "users/#{session[:user_id]}/decks"
end

get "/users/:id/decks" do
  @user = User.find_by(id: params[:id])
  erb :"users/decks"
end
