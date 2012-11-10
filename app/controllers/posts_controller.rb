class PostsController < ApplicationController
	def index
		@posts = Post.all 				 # view uses it
	end

	def show
		@post = Post.find(params[:id])   # when we request page, we pass post id to the URL (posts/1), 
										 # not @posts (not plural)- since we are talking about one object
										 # so the ID is in the URL. we embed the ID of the resource. this is typical when you do repo resources..embed iID in resource...when showing, u can just do a find and just get from DB
		@comment = @post.comments.build  # build is going to create a new comment based on the post									 
	end

	def new
		@post = Post.new
	end

	def create
		Post.create(params[:post])   	      # create a new post based on value of form
											  # Post.create = @post = Post.new(params[:post]) + @posts.save
		redirect_to root_path                 # root (rake route, and the home page, #index corresponds to root)
											  # can be written as redirect_to(posts_path, :notice => 'succesfully created')
	end

end