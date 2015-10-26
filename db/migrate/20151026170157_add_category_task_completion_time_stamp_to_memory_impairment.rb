class AddCategoryTaskCompletionTimeStampToMemoryImpairment < ActiveRecord::Migration
  def change
    add_column :memory_impairments, :category_task_completion_timestamp, :integer
  end
end
