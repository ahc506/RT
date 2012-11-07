class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])   # when we request page, we pass post id to the URL (posts/1), 
										 # so the ID is in the URL. we embed the ID of the resource. this is typical when you do repo resources..embed iID in resource...when showing, u can just do a find and just get from DB
	end
end