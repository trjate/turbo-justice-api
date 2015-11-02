class AddPatientAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :transgender?, :boolean
    add_column :users, :race, :string
    add_column :users, :hispanic_or_latino?, :boolean
    add_column :users, :education_level, :string
    add_column :users, :married?, :string
    add_column :users, :employed?, :boolean
    add_column :users, :headcount_in_household, :integer
    add_column :users, :total_pretax_household_income, :integer
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :writing_hand, :string
  end
end
