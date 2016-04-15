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

get "cards/check" do
  @card = Card.find_by(params[:id])
end

post "/cards" do
  @card = Card.new(question: params[:question], answer: params[:answer], deck_id: params[:deck_id])
  redirect "decks/edit/#{params[:deck_id]}"
end

delete "/cards" do
  @card = Card.find_by(params[:card_id])
  Card.destroy(@card)
  redirect "decks/edit/#{params[:deck_id]}"
end
