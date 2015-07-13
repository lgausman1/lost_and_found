class SitesController < ApplicationController
	def index
		@users = User.all
		@posts = Post.all
		render :index
	end

	def about
		render :about
	end

	def contact
		render :contact
	end
end
