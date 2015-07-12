class SitesController < ApplicationController
	def index
		@users = User.all
		render :index
	end

	def about
		render :about
	end

	def contact
		render :contact
	end
end
