class AddUserIdToFamilyQuestion < ActiveRecord::Migration
  def change
    add_column :family_questions, :user_id, :integer
  end
end
