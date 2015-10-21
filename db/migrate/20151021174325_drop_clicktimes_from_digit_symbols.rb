class DropClicktimesFromDigitSymbols < ActiveRecord::Migration
  def change
    remove_column :digit_symbols, :clicktimes, :text
  end
end
