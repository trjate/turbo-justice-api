class RemoveTotalIncompleteMemoryImpairmentTasksFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :total_incomplete_memory_impairment_tasks, :integer
  end
end
