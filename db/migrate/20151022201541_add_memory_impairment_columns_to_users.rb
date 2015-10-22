class AddMemoryImpairmentColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :total_memory_impairment_points, :integer
    add_column :users, :total_memory_impairment_tasks_successfully_completed, :integer
    add_column :users, :total_incomplete_memory_impairment_tasks, :integer
  end
end
