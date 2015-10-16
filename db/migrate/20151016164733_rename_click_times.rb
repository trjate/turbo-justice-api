class RenameClickTimes < ActiveRecord::Migration
  def change
    rename_column :flankers, :click_times, :clicktimes
  end
end
