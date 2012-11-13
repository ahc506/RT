class CreateVotes < ActiveRecord::Migration
  def up
  		create_table :votes do |t|
  			t.integer :post_id  	#post_id is needed because the vote is for that post
  			t.string :direction 	# we need an attribute to tell us if it's up vote or down vote. 
  		end
  end

  def down
  	drop_table :votes
  end
end
