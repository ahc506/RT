class FormsController < ApplicationController

	def new

	end 

	def create
		render json: params
	end

	def new
		@post = Post.first
	end
end