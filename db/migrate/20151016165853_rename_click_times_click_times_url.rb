class RenameClickTimesClickTimesUrl < ActiveRecord::Migration
  def change
    rename_column :flankers, :clicktimes, :clicktimes_url
  end
end
