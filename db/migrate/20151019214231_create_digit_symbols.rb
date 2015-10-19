class CreateDigitSymbols < ActiveRecord::Migration
  def change
    create_table :digit_symbols do |t|
      t.integer :correct_guesses, default: 0
      t.integer :incorrect_guesses, default: 0
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
