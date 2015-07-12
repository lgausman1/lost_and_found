module SessionsHelper

	def login(user)
		session[:user_id] = user.id
		@current_user = user
	end

	def current_user
		if session[:user_id]
			@current_user ||= User.find(session[:user_id])
		else
			@current_user = nil
		end
	end

	def logged_in?
		if session[:user_id] == nil
			redirect_to login_path
		end
	end

	def logout
		@current_user = session[:user_id] = nil
	end


end
