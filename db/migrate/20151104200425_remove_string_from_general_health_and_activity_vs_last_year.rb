class RemoveStringFromGeneralHealthAndActivityVsLastYear < ActiveRecord::Migration
  def change
    remove_column :general_health_and_activity_vs_last_years, :string, :string
  end
end
