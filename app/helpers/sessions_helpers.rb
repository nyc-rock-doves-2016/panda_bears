helpers do
	def logged_in?
		session[:user_id] && User.find_by(id: session[:user_id])
	end

	def require_user
    	redirect '/sessions' unless logged_in?
	end
end
