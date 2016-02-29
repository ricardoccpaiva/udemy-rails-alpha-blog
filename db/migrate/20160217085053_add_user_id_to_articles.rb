class AddUserIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :user_id, :integer
    add_reference :articles, :users, index: true, foreign_key: true
  end
end
