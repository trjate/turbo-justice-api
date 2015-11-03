class DropTable < ActiveRecord::Migration
  def change
    drop_table :general_health_and_activity_over_last_two_weeks
  end
end
