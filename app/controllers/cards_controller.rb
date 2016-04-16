get "/cards" do
  redirect "cards/new"
end

get "/cards/new" do
  @deck_id = params[:deck_id]
  erb :'cards/new'
end

get "/cards/:id" do
  @card = Card.find_by(params[:id])
  params[:id] ? (erb :"/cards/show") : (redirect "/")
end

post "/cards" do
  @card = Card.new(question: params[:question], answer: params[:answer], deck_id: params[:deck_id])
  @user = User.find_by(id: session[:user_id])
  @errors = @user.errors.full_messages unless @card.save
  redirect "/decks/#{params[:deck_id]}/edit"
end

delete "/cards" do
  @card = Card.find_by(id: params[:card_id])
  Card.destroy(@card)
  redirect "/decks/#{params[:deck_id]}/edit"
end

get '/rounds/:round_id/cards/:id' do
  # binding.pry
  @round = Round.find_by(id: params[:round_id])
  @guess = @round.guesses.last
  if @card = @round.draw
    # binding.pry
    erb :"cards/show"
  else
    # binding.pry
    redirect "/rounds/#{@round.id}"
  end
end

post '/rounds/:round_id/cards/:id' do
  @round = Round.find_by(id: params[:round_id])
  @card = Card.find_by(id: params[:id])
  if params[:answer]
    is_correct = @card.correct?(params[:answer])
    Guess.create(card_id: @card.id, round_id: @round.id, is_correct: is_correct)
  end
  redirect "/rounds/#{@round.id}/cards/#{@card.id}"
end
