CourseProject::Application.routes.draw do
	#resources :posts  
	root to: "posts#index"

	resources :posts, only: [:show] # go to post and how action, and define post_path
end
