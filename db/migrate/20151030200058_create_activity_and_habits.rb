class CreateActivityAndHabits < ActiveRecord::Migration
  def change
    create_table :activity_and_habits do |t|

      t.timestamps null: false
    end
  end
end
