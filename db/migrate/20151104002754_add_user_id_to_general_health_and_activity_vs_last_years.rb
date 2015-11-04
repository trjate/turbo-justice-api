class AddUserIdToGeneralHealthAndActivityVsLastYears < ActiveRecord::Migration
  def change
    add_column :general_health_and_activity_vs_last_years, :user_id, :integer
  end
end
