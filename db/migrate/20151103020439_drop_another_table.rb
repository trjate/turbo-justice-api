class DropAnotherTable < ActiveRecord::Migration
  def change
    drop_table :general_health_and_activity_compared_to_one_year_agos
  end
end
