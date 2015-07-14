class SitesController < ApplicationController
	def index
		@users = User.all
		@posts = Post.all
		@user = User.new
		render :index
	end

	def about
		@posts = Post.all
		@user = User.new
		render :about
	end

	def contact
		@user = User.new
		render :contact
	end
end
