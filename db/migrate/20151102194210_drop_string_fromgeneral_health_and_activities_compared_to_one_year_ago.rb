class DropStringFromgeneralHealthAndActivitiesComparedToOneYearAgo < ActiveRecord::Migration
  def change
    remove_column :general_health_and_activities_compared_to_one_year_ago, :string, :string
  end
end
