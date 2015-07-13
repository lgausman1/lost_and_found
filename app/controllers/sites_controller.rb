class SitesController < ApplicationController
	def index
		@users = User.all
		@posts = Post.all
		render :index
	end

	def about
		@posts = Post.all
		render :about
	end

	def contact
		render :contact
	end
end
