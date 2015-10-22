class RenameColumnOnUser < ActiveRecord::Migration
  def change
    rename_column :users, :total_memory_impairment_tasks_successfully_completed, :memory_impairment_games_played
  end
end
