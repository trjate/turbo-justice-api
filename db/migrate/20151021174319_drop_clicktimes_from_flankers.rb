class DropClicktimesFromFlankers < ActiveRecord::Migration
  def change
    remove_column :flankers, :clicktimes, :text
  end
end
