class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :client, :string
    add_column :users, :access_token, :string
    add_column :users, :bearer, :string
  end
end
