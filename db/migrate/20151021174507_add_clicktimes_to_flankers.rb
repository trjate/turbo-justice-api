class AddClicktimesToFlankers < ActiveRecord::Migration
  def change
    add_column :flankers, :clicktimes, :integer
  end
end
