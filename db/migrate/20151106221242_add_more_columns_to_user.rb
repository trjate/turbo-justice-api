class AddMoreColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :get_help_completing_survey?, :boolean
    add_column :users, :willing_to_have_blood_drawn?, :boolean
    add_column :users, :able_to_have_MRI?, :boolean
    add_column :users, :willing_to_have_lumbar_puncture?, :string
  end
end
