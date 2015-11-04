class AddUserIdToGeneralHealthAndActivity < ActiveRecord::Migration
  def change
    add_column :general_health_and_activities, :user_id, :integer
  end
end
