class RenameColumnOnMedicalHistory < ActiveRecord::Migration
  def change
    rename_column :medical_histories, :currently_taking_other_vascular_or_circulatory_system_problems?,
                  :currently_taking_other_vascular_or_circulatory_system_meds?
  end
end
