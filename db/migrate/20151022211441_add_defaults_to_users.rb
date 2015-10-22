class AddDefaultsToUsers < ActiveRecord::Migration
  def change
    change_column :users, :memory_impairment_games_played, :integer, default: 0
    change_column :users, :total_memory_impairment_points, :integer, default: 0
  end
end
