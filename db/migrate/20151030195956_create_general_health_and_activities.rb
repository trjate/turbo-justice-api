class CreateGeneralHealthAndActivities < ActiveRecord::Migration
  def change
    create_table :general_health_and_activities do |t|

      t.timestamps null: false
    end
  end
end
