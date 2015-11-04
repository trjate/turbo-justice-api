class AddUserIdToMedicalHistory < ActiveRecord::Migration
  def change
    add_column :medical_histories, :user_id, :integer
  end
end
