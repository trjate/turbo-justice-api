class MedicalHistory < ActiveRecord::Base
  belongs_to :user
  validates :user_id, uniqueness: true

  def add_medical_history_data!(params)

   self.update(

     ever_had_hypertension?:
     params[:ever_had_hypertension?],

     age_when_diagnosed_with_hypertension?:
     params[:age_when_diagnosed_with_hypertension?],

     currently_taking_hypertension_medication?:
     params[:currently_taking_hypertension_medication?],

     ever_had_TIA?:
     params[:ever_had_TIA?],

     age_when_TIA_occurred?:
     params[:age_when_TIA_occurred?],

     currently_taking_TIA_medication?:
     params[:currently_taking_TIA_medication?],

     ever_had_heart_attack?:
     params[:ever_had_heart_attack?],

     age_when_heart_attack_occurred?:
     params[:age_when_heart_attack_occurred?],

     currently_taking_heart_attack_medication?:
     params[:currently_taking_heart_attack_medication?],

     ever_had_coronary_heart_disease_or_angina?:
     params[:ever_had_coronary_heart_disease_or_angina?],

     age_when_diagnosed_with_coronary_heart_disease_or_angina?:
     params[:age_when_diagnosed_with_coronary_heart_disease_or_angina?],

     currently_taking_coronary_heart_disease_or_angina_medication?:
     params[:currently_taking_coronary_heart_disease_or_angina_medication?],

     ever_had_congestive_heart_failure?:
     params[:ever_had_congestive_heart_failure?],

     age_when_diagnosed_with_congestive_heart_failure?:
     params[:age_when_diagnosed_with_congestive_heart_failure?],

     currently_taking_congestive_heart_failure_medication?:
     params[:currently_taking_congestive_heart_failure_medication?],

     ever_had_high_cholesterol_or_triglycerides?:
     params[:ever_had_high_cholesterol_or_triglycerides?],

     age_when_diagnosed_with_high_cholesterol_or_triglycerides?:
     params[:age_when_diagnosed_with_high_cholesterol_or_triglycerides?],

     currently_taking_high_cholesterol_or_triglycerides_medication?:
     params[:currently_taking_high_cholesterol_or_triglycerides_medication?],

     ever_had_pulmonary_embolism_DVT_or_blood_clots?:
     params[:ever_had_pulmonary_embolism_DVT_or_blood_clots?],

     age_when_diagnosed_with_pulmonary_embolism_DVT_or_blood_clots?:
     params[:age_when_diagnosed_with_pulmonary_embolism_DVT_or_blood_clots?],

     currently_taking_pulmonary_embolism_DVT_or_blood_clots_meds?:
     params[:currently_taking_pulmonary_embolism_DVT_or_blood_clots_meds?],

     ever_had_other_vascular_or_circulatory_system_problems?:
     params[:ever_had_other_vascular_or_circulatory_system_problems?],

     age_when_diagnosed_with_other_vascular_or_circulatory_problems?:
     params[:age_when_diagnosed_with_other_vascular_or_circulatory_problems?],

     currently_taking_other_vascular_or_circulatory_system_meds?:
     params[:currently_taking_other_vascular_or_circulatory_system_meds?],

     ever_had_migraine_headaches?:
     params[:ever_had_migraine_headaches?],

     age_when_diagnosed_with_migraine_headaches?:
     params[:age_when_diagnosed_with_migraine_headaches?],

     currently_taking_migraine_headaches_medication?:
     params[:currently_taking_migraine_headaches_medication?],

     ever_had_MCI_or_memory_loss?:
     params[:ever_had_MCI_or_memory_loss?],

     age_when_diagnosed_with_MCI_or_memory_loss?:
     params[:age_when_diagnosed_with_MCI_or_memory_loss?],

     currently_taking_MCI_or_memory_loss_medication?:
     params[:currently_taking_MCI_or_memory_loss_medication?],

     ever_had_AD?:
     params[:ever_had_AD?],

     age_when_diagnosed_with_AD?:
     params[:age_when_diagnosed_with_AD?],

     currently_taking_AD_medication?:
     params[:currently_taking_AD_medication?],

     ever_had_other_dementia?:
     params[:ever_had_other_dementia?],

     age_when_diagnosed_with_other_dementia?:
     params[:age_when_diagnosed_with_other_dementia?],

     currently_taking_other_dementia_medication?:
     params[:currently_taking_other_dementia_medication?],

     had_concussion_or_traumatic_brain_injury_with_unconsciousness?:
     params[:had_concussion_or_traumatic_brain_injury_with_unconsciousness?],

     age_when_concussion_or_traumatic_brain_injury_occurred?:
     params[:age_when_concussion_or_traumatic_brain_injury_occurred?],

     currently_taking_concussion_or_traumatic_brain_injury_meds?:
     params[:currently_taking_concussion_or_traumatic_brain_injury_meds?],

     ever_had_spinal_cord_injury_or_impairment?:
     params[:ever_had_spinal_cord_injury_or_impairment?],

     age_when_spinal_cord_injury_or_impairment_occurred?:
     params[:age_when_spinal_cord_injury_or_impairment_occurred?],

     currently_taking_spinal_cord_injury_or_impairment_medication?:
     params[:currently_taking_spinal_cord_injury_or_impairment_medication?],

     ever_had_epilepsy?:
     params[:ever_had_epilepsy?],

     age_when_diagnosed_with_epilepsy?:
     params[:age_when_diagnosed_with_epilepsy?],

     currently_taking_epilepsy_medication?:
     params[:currently_taking_epilepsy_medication?],

     ever_had_parkinsons?:
     params[:ever_had_parkinsons?],

     age_when_diagnosed_with_parkinsons?:
     params[:age_when_diagnosed_with_parkinsons?],

     currently_taking_parkinsons_medication?:
     params[:currently_taking_parkinsons_medication?],

     ever_had_ALS?:
     params[:ever_had_ALS?],

     age_when_diagnosed_with_ALS?:
     params[:age_when_diagnosed_with_ALS?],

     currently_taking_ALS_medication?:
     params[:currently_taking_ALS_medication?],

     ever_had_MS?:
     params[:ever_had_MS?],

     age_when_diagnosed_with_MS?:
     params[:age_when_diagnosed_with_MS?],

     currently_taking_MS_medication?:
     params[:currently_taking_MS_medication?],

     ever_had_other_nervous_system_problems?:
     params[:ever_had_other_nervous_system_problems?],

     age_when_diagnosed_with_other_nervous_system_problems?:
     params[:age_when_diagnosed_with_other_nervous_system_problems?],

     currently_taking_medication_for_other_nervous_system_problems?:
     params[:currently_taking_medication_for_other_nervous_system_problems?],

     ever_had_PTSD?:
     params[:ever_had_PTSD?],

     ever_had_depression_or_bipolar_disorder?:
     params[:ever_had_depression_or_bipolar_disorder?],

     ever_had_schizophrenia?:
     params[:ever_had_schizophrenia?],

     ever_had_other_mental_health_disorder?:
     params[:ever_had_other_mental_health_disorder?],

     ever_had_tuberculosis?:
     params[:ever_had_tuberculosis?],

     ever_had_hepatitis_B_or_C?:
     params[:ever_had_hepatitis_B_or_C?],

     ever_had_HIV_or_AIDS?:
     params[:ever_had_HIV_or_AIDS?],

     ever_had_breast_cancer?:
     params[:ever_had_breast_cancer?],

     ever_had_colon_or_rectal_cancer?:
     params[:ever_had_colon_or_rectal_cancer?],

     ever_had_lung_cancer?:
     params[:ever_had_lung_cancer?],

     ever_had_prostate_cancer?:
     params[:ever_had_prostate_cancer?],

     ever_had_melanoma?:
     params[:ever_had_melanoma?],

     ever_had_other_skin_cancer?:
     params[:ever_had_other_skin_cancer?],

     ever_had_leukemia?:
     params[:ever_had_leukemia?],

     ever_had_lymphoma?:
     params[:ever_had_lymphoma?],

     ever_had_other_cancer?:
     params[:ever_had_other_cancer?],

     ever_had_kidney_disease_without_dialysis?:
     params[:ever_had_kidney_disease_without_dialysis?],

     ever_had_kidney_disease_with_dialysis?:
     params[:ever_had_kidney_disease_with_dialysis?],

     ever_had_chronic_lung_disease?:
     params[:ever_had_chronic_lung_disease?],

     ever_had_sleep_apnea?:
     params[:ever_had_sleep_apnea?],

     ever_had_thyroid_problems?:
     params[:ever_had_thyroid_problems?],

     ever_had_diabetes?:
     params[:ever_had_diabetes?],

     ever_had_vision_problems_that_interfered_with_daily_stuff?:
     params[:ever_had_vision_problems_that_interfered_with_daily_stuff?],

     ever_had_physical_disabilities_that_interfered_with_daily_stuff:
     params[:ever_had_physical_disabilities_that_interfered_with_daily_stuff])

 end
end
