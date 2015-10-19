class AddDigitSymbolColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :total_correct_digit_symbol_guesses, :integer, default: 0
    add_column :users, :total_incorrect_digit_symbol_guesses, :integer, default: 0
    add_column :users, :digit_symbol_games_played, :integer, default: 0
  end
end
