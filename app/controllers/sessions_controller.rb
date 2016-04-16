get '/sessions' do
  erb :'sessions/index'
end

post '/sessions' do
  @user = User.find_by(username: params[:user][:username])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = ["Incorrect Email or Password"]
    redirect 'sessions/'
  end
end

delete '/sessions' do
  session.clear
  redirect '/sessions'
end
