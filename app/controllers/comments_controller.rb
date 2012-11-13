class CommentsController < ApplicationController

  def create
    post = Post.find(params[:post_id])    # Re above: we need to create a comment for post, but 
                        # we need the post first.  The URL when we post has an 
                        # ID in it. So the post ID is in the URL coming to 
                        # action. So the params has the post_id in it.  
    
    post.comments.create(params[:comment])  # This gets the Post.  Now, we create comment for post.
    
    redirect_to post                        # After commend, we want redirect to post_path(post) or 
                        # post (back to show page, see rake routes).

  end

end
