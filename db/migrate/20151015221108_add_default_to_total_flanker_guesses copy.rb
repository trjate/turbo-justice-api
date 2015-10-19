class AddDefaultToTotalFlankerGuesses < ActiveRecord::Migration
  def change
    change_column :users, :total_correct_flanker_guesses, :integer,  default: 0, null: false
    change_column :users, :total_incorrect_flanker_guesses, :integer,  default: 0, null: false
  end
end
