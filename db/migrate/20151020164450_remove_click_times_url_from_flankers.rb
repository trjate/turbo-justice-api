class RemoveClickTimesUrlFromFlankers < ActiveRecord::Migration
  def change
    remove_column :flankers, :clicktimes_url, :datetime
  end
end
