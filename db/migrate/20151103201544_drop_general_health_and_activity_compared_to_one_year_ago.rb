class DropGeneralHealthAndActivityComparedToOneYearAgo < ActiveRecord::Migration
  def change
    drop_table :general_health_and_activities_compared_to_one_year_ago
  end
end
