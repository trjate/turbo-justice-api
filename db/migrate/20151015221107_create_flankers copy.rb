class CreateFlankers < ActiveRecord::Migration
  def change
    create_table :flankers do |t|
      
      t.timestamps null: false
    end
  end
end
