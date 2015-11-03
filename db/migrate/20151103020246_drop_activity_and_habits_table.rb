class DropActivityAndHabitsTable < ActiveRecord::Migration
  def change
    drop_table :activity_and_habits
  end
end
