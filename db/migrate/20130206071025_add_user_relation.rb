class AddUserRelation < ActiveRecord::Migration
  def up
  	#create method column to manage adding in column 
  	#on table post and name of column
  	#>> add_column TABLE_NAME, COLUMN_NAME, TYPE
  	add_column :posts, :user_id, :integer
  	add_column :comments, :user_id, :integer
  	add_column :comments, :post_id, :integer
  end

  def down
  end
end
