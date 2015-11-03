class AddColumnsToMedicalHistories < ActiveRecord::Migration
  def change
    add_column :medical_histories, :ever_had_hypertension?, :boolean
    add_column :medical_histories, :age_when_diagnosed_with_hypertension?, :string
    add_column :medical_histories, :currently_taking_hypertension_medication?, :boolean
    add_column :medical_histories, :ever_had_TIA?, :boolean
    add_column :medical_histories, :age_when_TIA_occurred?, :string
    add_column :medical_histories, :currently_taking_TIA_medication?, :boolean
    add_column :medical_histories, :ever_had_heart_attack?, :boolean
    add_column :medical_histories, :age_when_heart_attack_occurred?, :string
    add_column :medical_histories, :currently_taking_heart_attack_medication?, :boolean
    add_column :medical_histories, :ever_had_coronary_heart_disease_or_angina?, :boolean
    add_column :medical_histories, :age_when_diagnosed_with_coronary_heart_disease_or_angina?, :string
    add_column :medical_histories, :currently_taking_coronary_heart_disease_or_angina_medication?, :boolean
    add_column :medical_histories, :ever_had_congestive_heart_failure?, :boolean
    add_column :medical_histories, :age_when_diagnosed_with_congestive_heart_failure?, :string
    add_column :medical_histories, :currently_taking_congestive_heart_failure_medication?, :boolean
    add_column :medical_histories, :ever_had_high_cholesterol_or_triglycerides?, :boolean
    add_column :medical_histories, :age_when_diagnosed_with_high_cholesterol_or_triglycerides?, :string
    add_column :medical_histories, :currently_taking_high_cholesterol_or_triglycerides_medication?, :boolean
    add_column :medical_histories, :ever_had_pulmonary_embolism_DVT_or_blood_clots?, :boolean
    add_column :medical_histories, :age_when_diagnosed_with_pulmonary_embolism_DVT_or_blood_clots?, :string
    add_column :medical_histories, :currently_taking_pulmonary_embolism_DVT_or_blood_clots_medication?, :boolean
    add_column :medical_histories, :ever_had_other_vascular_or_circulatory_system_problems?, :boolean
    add_column :medical_histories, :age_when_diagnosed_with_other_vascular_or_circulatory_system_problems?, :string
    add_column :medical_histories, :currently_taking_other_vascular_or_circulatory_system_problems?, :boolean
    add_column :medical_histories, :ever_had_migraine_headaches?, :boolean
    add_column :medical_histories, :age_when_diagnosed_with_migraine_headaches?, :string
    add_column :medical_histories, :currently_taking_migraine_headaches_medication?, :boolean
    add_column :medical_histories, :ever_had_MCI_or_memory_loss?, :boolean
    add_column :medical_histories, :age_when_diagnosed_with_MCI_or_memory_loss?, :string
    add_column :medical_histories, :currently_taking_MCI_or_memory_loss_medication?, :boolean
    add_column :medical_histories, :ever_had_AD?, :boolean
    add_column :medical_histories, :age_when_diagnosed_with_AD?, :string
    add_column :medical_histories, :currently_taking_AD_medication?, :boolean
    add_column :medical_histories, :ever_had_other_dementia?, :boolean
    add_column :medical_histories, :age_when_diagnosed_with_other_dementia?, :string
    add_column :medical_histories, :currently_taking_other_dementia_medication?, :boolean
    add_column :medical_histories, :ever_had_concussion_or_traumatic_brain_injury_with_loss_of_consciousness?, :boolean
    add_column :medical_histories, :age_when_concussion_or_traumatic_brain_injury_with_loss_of_consciousness_occurred?, :string
    add_column :medical_histories, :currently_taking_concussion_or_traumatic_brain_injury_medication?, :boolean
    add_column :medical_histories, :ever_had_spinal_cord_injury_or_impairment?, :boolean
    add_column :medical_histories, :age_when_spinal_cord_injury_or_impairment_occurred?, :string
    add_column :medical_histories, :currently_taking_spinal_cord_injury_or_impairment_medication?, :boolean
    add_column :medical_histories, :ever_had_epilepsy?, :boolean
    add_column :medical_histories, :age_when_diagnosed_with_epilepsy?, :string
    add_column :medical_histories, :currently_taking_epilepsy_medication?, :boolean
    add_column :medical_histories, :ever_had_parkinsons?, :boolean
    add_column :medical_histories, :age_when_diagnosed_with_parkinsons?, :string
    add_column :medical_histories, :currently_taking_parkinsons_medication?, :boolean
    add_column :medical_histories, :ever_had_ALS?, :boolean
    add_column :medical_histories, :age_when_diagnosed_with_ALS?, :string
    add_column :medical_histories, :currently_taking_ALS_medication?, :boolean
    add_column :medical_histories, :ever_had_MS?, :boolean
    add_column :medical_histories, :age_when_diagnosed_with_MS?, :string
    add_column :medical_histories, :currently_taking_MS_medication?, :boolean
    add_column :medical_histories, :ever_had_other_nervous_system_problems?, :boolean
    add_column :medical_histories, :age_when_diagnosed_with_other_nervous_system_problems?, :string
    add_column :medical_histories, :currently_taking_medication_for_other_nervous_system_problems?, :boolean
    add_column :medical_histories, :ever_had_PTSD?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_PTSD?, :string
    # add_column :medical_histories, :currently_taking_PTSD_medication?, :boolean
    add_column :medical_histories, :ever_had_depression_or_bipolar_disorder?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_depression_or_bipolar_disorder?, :string
    # add_column :medical_histories, :currently_taking_depression_or_bipolar_disorder_medication?, :boolean
    add_column :medical_histories, :ever_had_schizophrenia?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_schizophrenia?, :string
    # add_column :medical_histories, :currently_taking_schizophrenia_medication?, :boolean
    add_column :medical_histories, :ever_had_other_mental_health_disorder?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_other_mental_health_disorder?, :string
    # add_column :medical_histories, :currently_taking_other_mental_health_disorder_medication?, :boolean
    add_column :medical_histories, :ever_had_tuberculosis?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_tuberculosis?, :string
    # add_column :medical_histories, :currently_taking_tuberculosis_medication?, :boolean
    add_column :medical_histories, :ever_had_hepatitis_B_or_C?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_hepatitis_B_or_C?, :string
    # add_column :medical_histories, :currently_taking_hepatitis_B_or_C_medication?, :boolean
    add_column :medical_histories, :ever_had_HIV_or_AIDS?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_HIV_or_AIDS?, :string
    # add_column :medical_histories, :currently_being_treated_for_HIV_or_AIDS?, :boolean
    add_column :medical_histories, :ever_had_breast_cancer?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_breast_cancer?, :string
    # add_column :medical_histories, :currently_being_treated_for_breast_cancer?, :boolean
    add_column :medical_histories, :ever_had_colon_or_rectal_cancer?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_colon_or_rectal_cancer?, :string
    # add_column :medical_histories, :currently_being_treated_for_colon_or_rectal_cancer?, :boolean
    add_column :medical_histories, :ever_had_lung_cancer?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_lung_cancer?, :string
    # add_column :medical_histories, :currently_being_treated_for_lung_cancer?, :boolean
    add_column :medical_histories, :ever_had_prostate_cancer?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_prostate_cancer?, :string
    # add_column :medical_histories, :currently_being_treated_for_prostate_cancer?, :boolean
    add_column :medical_histories, :ever_had_melanoma?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_melanoma?, :string
    # add_column :medical_histories, :currently_being_treated_for_melanoma?, :boolean
    add_column :medical_histories, :ever_had_other_skin_cancer?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_other_skin_cancer?, :string
    # add_column :medical_histories, :currently_being_treated_for_other_skin_cancer?, :boolean
    add_column :medical_histories, :ever_had_leukemia?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_leukemia?, :string
    # add_column :medical_histories, :currently_being_treated_for_leukemia?, :boolean
    add_column :medical_histories, :ever_had_lymphoma?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_lymphoma?, :string
    # add_column :medical_histories, :currently_being_treated_for_lymphoma?, :boolean
    add_column :medical_histories, :ever_had_other_cancer?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_other_cancer?, :string
    # add_column :medical_histories, :currently_being_treated_for_other_cancer?, :boolean
    add_column :medical_histories, :ever_had_kidney_disease_without_dialysis?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_kidney_disease_without_dialysis?, :string
    add_column :medical_histories, :ever_had_kidney_disease_with_dialysis?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_kidney_disease_with_dialysis?, :string
    add_column :medical_histories, :ever_had_chronic_lung_disease?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_chronic_lung_disease?, :string
    # add_column :medical_histories, :currently_taking_chronic_lung_disease_medication?, :boolean
    add_column :medical_histories, :ever_had_sleep_apnea?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_sleep_apnea?, :string
    # add_column :medical_histories, :currently_taking_sleep_apnea_medication?, :boolean
    add_column :medical_histories, :ever_had_thyroid_problems?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_thyroid_problems?, :string
    # add_column :medical_histories, :currently_taking_medication_for_thyroid_problems?, :boolean
    add_column :medical_histories, :ever_had_diabetes?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_diabetes?, :string
    # add_column :medical_histories, :currently_taking_diabetes_medication?, :boolean
    add_column :medical_histories, :ever_had_condition_related_vision_problems_that_interfered_with_everyday_activities?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_condition_related_vision_problems?, :string
    # add_column :medical_histories, :currently_taking_medication_for_condition_related_vision_problems?, :boolean
    add_column :medical_histories, :ever_had_physical_disabilities_that_interfered_with_everyday_activities?, :boolean
    # add_column :medical_histories, :age_when_diagnosed_with_physical_disabilities?, :string
    # add_column :medical_histories, :currently_taking_medication_for_physical_disabilities?, :boolean



  end
end
