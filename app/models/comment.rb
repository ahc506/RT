class Comment < ActiveRecord::Base
  attr_accessible :content, :post_id, :user_id
end
