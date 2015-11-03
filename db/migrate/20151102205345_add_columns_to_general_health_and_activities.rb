class AddColumnsToGeneralHealthAndActivities < ActiveRecord::Migration
  def change
    add_column :general_health_and_activities, :average_number_of_alcoholic_drinks_each_week_over_past_year?, :string
    add_column :general_health_and_activities, :ever_smoked_cigarettes_regularly?, :boolean
    add_column :general_health_and_activities, :currently_smoke?, :boolean
    add_column :general_health_and_activities, :typical_bedtime?, :string
    add_column :general_health_and_activities, :typical_waketime?, :string
    add_column :general_health_and_activities, :typical_sleeptime?, :integer
  end
end
