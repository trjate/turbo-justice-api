class ChangeDigitSymbolClickTimesColumnType < ActiveRecord::Migration
  def change
    change_column :digit_symbols, :clicktimes, :string
  end
end
