class RenameColumnsOnMedicalHistory < ActiveRecord::Migration
  def change
    rename_column :medical_histories, :currently_taking_pulmonary_embolism_DVT_or_blood_clots_medicati,
    :currently_taking_pulmonary_embolism_DVT_or_blood_clots_meds?
    rename_column :medical_histories, :age_when_diagnosed_with_other_vascular_or_circulatory_system_pr,
    :age_when_diagnosed_with_other_vascular_or_circulatory_problems?
    rename_column :medical_histories, :ever_had_concussion_or_traumatic_brain_injury_with_loss_of_cons,
    :had_concussion_or_traumatic_brain_injury_with_unconsciousness?
    rename_column :medical_histories, :age_when_concussion_or_traumatic_brain_injury_with_loss_of_cons,
    :age_when_concussion_or_traumatic_brain_injury_occurred?
    rename_column :medical_histories, :currently_taking_concussion_or_traumatic_brain_injury_medicatio,
    :currently_taking_concussion_or_traumatic_brain_injury_meds?
    rename_column :medical_histories, :ever_had_condition_related_vision_problems_that_interfered_with,
    :ever_had_vision_problems_that_interfered_with_daily_stuff?
    rename_column :medical_histories, :ever_had_physical_disabilities_that_interfered_with_everyday_ac,
    :ever_had_physical_disabilities_that_interfered_with_daily_stuff?
  end
end
