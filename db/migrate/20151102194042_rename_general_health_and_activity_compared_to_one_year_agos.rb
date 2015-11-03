class RenameGeneralHealthAndActivityComparedToOneYearAgos < ActiveRecord::Migration
  def change
    rename_table :general_health_and_activity_compared_to_one_year_agos, :general_health_and_activities_compared_to_one_year_ago
  end
end
