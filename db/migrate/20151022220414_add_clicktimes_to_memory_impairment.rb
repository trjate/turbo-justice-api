class AddClicktimesToMemoryImpairment < ActiveRecord::Migration
  def change
    add_column :memory_impairments, :clicktimes, :string
  end
end
