class AddClickTimesToFlanker < ActiveRecord::Migration
  def change
    add_column :flankers, :click_times, :datetime
  end
end
