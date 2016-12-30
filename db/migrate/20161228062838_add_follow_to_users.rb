class AddFollowToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :follow_count, :integer
    add_column :users, :follower_count, :integer
  end
end
