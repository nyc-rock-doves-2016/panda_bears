helpers do
	def logged_in?
		session[:user_id] && @user = User.find_by(id: session[:user_id])
	end

	def require_user
		redirect 'users/login' unless logged_in?
	end
end
