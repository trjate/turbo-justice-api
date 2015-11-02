class AddTwoFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :emory_patient?, :string
  end
end
