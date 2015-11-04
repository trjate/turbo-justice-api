class AddUserIdToGeneralHealthAndActivitiesOverLastTwoWeeks < ActiveRecord::Migration
  def change
    add_column :general_health_and_activities_over_last_two_weeks, :user_id, :integer
  end
end
