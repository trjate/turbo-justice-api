class AddClicktimesToDigitSymbols < ActiveRecord::Migration
  def change
    add_column :digit_symbols, :clicktimes, :integer
  end
end
