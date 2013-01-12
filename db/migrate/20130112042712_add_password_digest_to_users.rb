class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
  	# add column table,column,data type
  	add_column :users, :password_digest, :string
  end
end
