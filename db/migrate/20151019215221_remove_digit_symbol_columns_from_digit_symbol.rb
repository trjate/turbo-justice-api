class RemoveDigitSymbolColumnsFromDigitSymbol < ActiveRecord::Migration
  def change
    remove_column :digit_symbols, :total_correct_digit_symbol_guesses, :integer, default: 0
    remove_column :digit_symbols, :total_incorrect_digit_symbol_guesses, :integer, default: 0
    remove_column :digit_symbols, :digit_symbol_games_played, :integer, default: 0
  end
end
