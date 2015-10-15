class RemoveColumnsFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :client, :string
    remove_column :users, :access_token, :string
    remove_column :users, :bearer, :string
  end
end
