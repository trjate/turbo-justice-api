class AddUserIdToActivitiesAndHabit < ActiveRecord::Migration
  def change
    add_column :activities_and_habits, :user_id, :integer
  end
end
