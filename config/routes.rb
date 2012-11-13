CourseProject::Application.routes.draw do
	resources :posts  
	resources :users

	root to: "posts#index"

	resources :posts, only: [:show, :new, :create] do # go to post and how action, and define post_path 
										  # we need a path to post to the index page
										  # :new= GET
										  # :create = POST
										  # check rake route. You see posts#create (action in controller) = posts POST
										  # just an underscore _path to call (e.g., posts => posts_path; new_post = new_post_path)
	
		resources :comments, only: [:create]    #nested resource
    resources :votes, only: [:create]       # create only since we dont need to modify votes
	end

	get 'my_form', to: 'forms#new'
	post '/my_form', to: 'forms#create'
end
