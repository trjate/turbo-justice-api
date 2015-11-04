class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable, #confirmable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_many :flankers
  has_many :digit_symbols
  has_many :memory_impairments
  has_one  :activities_and_habit
  has_one  :family_question
  has_one  :general_health_and_activity
  has_one  :job
  has_one  :medical_history
  has_one  :medication_and_maintenance_rx
  has_one  :reference
  has_one  :general_health_and_activity_vs_last_year
  has_one  :general_health_and_activities_over_last_two_week

  WEIGHT_REGEX = /\A(?-i)(?=^.{8,}$)((?!.*\s)(?=.*[A-Z])(?=.*[a-z]))((?=(.*\d){1,})|(?=(.*\W){1,}))^.*$\z/

  validates :weight, format: { with: WEIGHT_REGEX,     #{ errors: @user.weight.errors.full_messages }
                               message: " must be an integer less than 1000" }

   def add_attributes_to_users!(params)
     @user.update(gender:                        params[:gender],
                  emory_patient?:                params[:emory_patient?],
                  transgender?:                  params[:transgender?],
                  race:                          params[:race],
                  hispanic_or_latino?:           params[:hispanic_or_latino?],
                  education_level:               params[:education_level],
                  married?:                      params[:married?],
                  employed?:                     params[:employed?],
                  headcount_in_household:        params[:headcount_in_household],
                  total_pretax_household_income: params[:total_pretax_household_income],
                  height:                        params[:height],
                  weight:                        params[:weight],
                  writing_hand:                  params[:writing_hand])

     @user.activities_and_habit.update(

      frequency_of_10_plus_minute_nonstop_walks_outside:
      params[:frequency_of_10_plus_minute_nonstop_walks_outside],

      length_of_10_plus_minute_nonstop_walks_outside:
      params[:length_of_10_plus_minute_nonstop_walks_outside],

      usual_walking_speed?:
      params[:usual_walking_speed?],

      frequency_of_nonwalking_moderate_or_strenuous_exercise:
      params[:frequency_of_nonwalking_moderate_or_strenuous_exercise],

      length_of_nonwalking_moderate_or_strenuous_exercise:
      params[:length_of_nonwalking_moderate_or_strenuous_exercise],

      frequency_of_mild_exercise:
      params[:frequency_of_mild_exercise],

      length_of_mild_exercise:
      params[:length_of_mild_exercise],

      frequency_of_reading_newspaper_last_year:
      params[:frequency_of_reading_newspaper_last_year],

      frequency_of_reading_magazines_last_year:
      params[:frequency_of_reading_magazines_last_year],

      frequency_of_reading_books_last_year:
      params[:frequency_of_reading_books_last_year],

      frequency_of_writing_letters_or_sending_emails_last_year:
      params[:frequency_of_writing_letters_or_sending_emails_last_year],

      frequency_of_playing_games_or_solving_puzzles_last_year:
      params[:frequency_of_playing_games_or_solving_puzzles_last_year],

      ever_had_music_instruction_or_training?:
      params[:ever_had_music_instruction_or_training?])

      #@user.family_question.update(

    @user.general_health_and_activity.update(

      overall_physical_health?:
      params[:overall_physical_health?],

      overall_mental_health?:
      params[:overall_mental_health?],

      trouble_remembering_things?:
      params[:trouble_remembering_things?],

      memory_compared_to_decade_ago?:
      params[:memory_compared_to_decade_ago?],

      average_number_of_alcoholic_drinks_each_week_over_past_year?:
      params[:average_number_of_alcoholic_drinks_each_week_over_past_year?],

      ever_smoked_cigarettes_regularly?:
      params[:ever_smoked_cigarettes_regularly?],

      currently_smoke?:
      params[:currently_smoke?],

      typical_bedtime?:
      params[:typical_bedtime],

      typical_waketime?:
      params[:typical_waketime?],

      typical_sleeptime?:
      params[:typical_sleeptime?])

    @user.general_health_and_activities_over_last_two_week.update(

      little_interest_or_pleasure_in_doing_things?:
      params[:little_interest_or_pleasure_in_doing_things?],

      feeling_down_depressed_or_hopeless?:
      params[:feeling_down_depressed_or_hopeless?],

      trouble_falling_or_staying_asleep_or_sleeping_too_much?:
      params[:trouble_falling_or_staying_asleep_or_sleeping_too_much?],

      feeling_tired_or_having_little_energy?:
      params[:feeling_tired_or_having_little_energy?],

      poor_appetite_or_overeating?:
      params[:poor_appetite_or_overeating?],

      feeling_like_a_failure_or_bad_about_yourself?:
      params[:feeling_like_a_failure_or_bad_about_yourself?],

      trouble_concentrating_while_reading_or_watching_tv?:
      params[:trouble_concentrating_while_reading_or_watching_tv?],

      moving_or_speaking_noticeably_slowly_or_being_extra_fidgety?:
      params[:moving_or_speaking_noticeably_slowly_or_being_extra_fidgety?],

      feeling_nervous_anxious_or_on_edge?:
      params[:feeling_nervous_anxious_or_on_edge?],

      being_unable_to_control_worrying?:
      params[:being_unable_to_control_worrying?],

      worrying_too_much_about_things?:
      params[:worrying_too_much_about_things?],

      trouble_relaxing?:
      params[:trouble_relaxing?],

      being_so_restless_you_cannot_sit_still?:
      params[:being_so_restless_you_cannot_sit_still?],

      becoming_easily_annoyed_or_irritable?:
      params[:becoming_easily_annoyed_or_irritable?],

      feeling_afraid_something_bad_might_happen?:
      params[:feeling_afraid_something_bad_might_happen?])

    @user.general_health_and_activity_vs_last_year.update(

      substantially_declined_memory?:
      params[:substantially_declined_memory?],

      others_tell_that_you_repeat_questions?:
      params[:others_tell_that_you_repeat_questions?],

      misplace_things_more_often?:
      params[:misplace_things_more_often?],

      rely_more_on_written_reminders?:
      params[:rely_more_on_written_reminders?],

      need_more_help_to_remember_appointments_or_holidays?:
      params[:need_more_help_to_remember_appointments_or_holidays?],

      have_more_trouble_recalling_names_or_finding_right_word?:
      params[:have_more_trouble_recalling_names_or_finding_right_word?],

      have_more_trouble_driving?:
      params[:have_more_trouble_driving?],

      have_difficulty_managing_money?:
      params[:have_difficulty_managing_money?],

      less_involved_in_social_activities?:
      params[:less_involved_in_social_activities?],

      work_performance_declined_significantly?:
      params[:work_performance_declined_significantly?],

      have_more_trouble_following_news_book_plots_movies_or_shows?:
      params[:have_more_trouble_following_news_book_plots_movies_or_shows?],

      activities_that_are_substantially_more_difficult?:
      params[:activities_that_are_substantially_more_difficult?],

      more_apt_to_get_lost_in_another_city?:
      params[:more_apt_to_get_lost_in_another_city?],

      more_difficulty_using_household_appliances?:
      params[:more_difficulty_using_household_appliances?])

    @user.job.update(

      ever_work_for_6_plus_months_with_regular_solvent_exposure?:
      params[:ever_work_for_6_plus_months_with_regular_solvent_exposure?],

      ever_work_for_6_plus_months_with_regular_metal_fume_exposure?:
      params[:ever_work_for_6_plus_months_with_regular_metal_fume_exposure?],

      ever_work_for_6_plus_months_with_regular_pesticide_exposure?:
      params[:ever_work_for_6_plus_months_with_regular_pesticide_exposure?])

    @user.medical_history.update(

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
      params[:age_when_diagnosed_with_other_vascular_or_circulatory_problems?]),

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
      params[:ever_had_physical_disabilities_that_interfered_with_daily_stuff],

      






















   end



end
