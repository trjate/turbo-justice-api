class AddColumnsToFlanker < ActiveRecord::Migration
  def change
    add_column :flankers, :correct_guesses, :integer, default: 0
    add_column :flankers, :incorrect_guesses, :integer, default: 0
    add_column :flankers, :user_id, :integer 
  end
end
