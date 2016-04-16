get '/rounds/:id' do
  @round = Round.find_by(id: params[:id])
  erb :"rounds/show"
end

post '/rounds' do
  @round = Round.new(params[:round])
  if @round.save
    @card = @round.draw
    redirect "/rounds/#{@round.id}/cards/#{@card.id}"
  else
    @errors = @round.errors.full_messages
    @deck = @round.deck
    erb :'decks/show'
  end
end
