class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :total_correct_flanker_guesses, :integer
    add_column :users, :total_incorrect_flanker_guesses, :integer
  end
end
