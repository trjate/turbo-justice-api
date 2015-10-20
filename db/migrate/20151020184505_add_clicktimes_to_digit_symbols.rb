class AddClicktimesToDigitSymbols < ActiveRecord::Migration
  def change
    add_column :digit_symbols, :clicktimes, :text
  end
end
