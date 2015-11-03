# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151103230305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities_and_habits", force: :cascade do |t|
    t.string   "frequency_of_10_plus_minute_nonstop_walks_outside"
    t.string   "length_of_10_plus_minute_nonstop_walks_outside"
    t.string   "usual_walking_speed?"
    t.string   "frequency_of_nonwalking_moderate_or_strenuous_exercise"
    t.string   "length_of_nonwalking_moderate_or_strenuous_exercise"
    t.string   "frequency_of_mild_exercise"
    t.string   "length_of_mild_exercise"
    t.string   "frequency_of_reading_newspaper_last_year"
    t.string   "frequency_of_reading_magazines_last_year"
    t.string   "frequency_of_reading_books_last_year"
    t.string   "frequency_of_writing_letters_or_sending_emails_last_year"
    t.string   "frequency_of_playing_games_or_solving_puzzles_last_year"
    t.boolean  "ever_had_music_instruction_or_training?"
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  create_table "digit_symbols", force: :cascade do |t|
    t.integer  "correct_guesses",   default: 0
    t.integer  "incorrect_guesses", default: 0
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "clicktimes"
  end

  create_table "family_questions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flankers", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "correct_guesses",   default: 0
    t.integer  "incorrect_guesses", default: 0
    t.integer  "user_id"
    t.string   "clicktimes"
  end

  create_table "general_health_and_activities", force: :cascade do |t|
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
    t.string   "overall_physical_health?"
    t.string   "overall_mental_health?"
    t.string   "trouble_remembering_things?"
    t.string   "memory_compared_to_decade_ago?"
    t.string   "average_number_of_alcoholic_drinks_each_week_over_past_year?"
    t.boolean  "ever_smoked_cigarettes_regularly?"
    t.boolean  "currently_smoke?"
    t.string   "typical_bedtime?"
    t.string   "typical_waketime?"
    t.integer  "typical_sleeptime?"
  end

  create_table "general_health_and_activities_over_last_two_weeks", force: :cascade do |t|
    t.string   "little_interest_or_pleasure_in_doing_things?"
    t.string   "feeling_down_depressed_or_hopeless?"
    t.string   "trouble_falling_or_staying_asleep_or_sleeping_too_much?"
    t.string   "feeling_tired_or_having_little_energy?"
    t.string   "poor_appetite_or_overeating?"
    t.string   "feeling_like_a_failure_or_bad_about_yourself?"
    t.string   "trouble_concentrating_while_reading_or_watching_tv?"
    t.string   "moving_or_speaking_noticeably_slowly_or_being_extra_fidgety?"
    t.string   "feeling_nervous_anxious_or_on_edge?"
    t.string   "being_unable_to_control_worrying?"
    t.string   "worrying_too_much_about_things?"
    t.string   "trouble_relaxing?"
    t.string   "being_so_restless_you_cannot_sit_still?"
    t.string   "becoming_easily_annoyed_or_irritable?"
    t.string   "feeling_afraid_something_bad_might_happen?"
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
  end

  create_table "general_health_and_activity_vs_last_years", force: :cascade do |t|
    t.string   "substantially_declined_memory?"
    t.string   "string"
    t.string   "others_tell_that_you_repeat_questions?"
    t.string   "misplace_things_more_often?"
    t.string   "rely_more_on_written_reminders?"
    t.string   "need_more_help_to_remember_appointments_or_holidays?"
    t.string   "have_more_trouble_recalling_names_or_finding_right_word?"
    t.string   "have_more_trouble_driving?"
    t.string   "have_difficulty_managing_money?"
    t.string   "less_involved_in_social_activities?"
    t.string   "work_performance_declined_significantly?"
    t.string   "have_more_trouble_following_news_book_plots_movies_or_shows?"
    t.string   "activities_that_are_substantially_more_difficult?"
    t.string   "more_apt_to_get_lost_in_another_city?"
    t.string   "more_difficulty_using_household_appliances?"
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.boolean  "ever_work_for_6_plus_months_with_regular_solvent_exposure?"
    t.boolean  "ever_work_for_6_plus_months_with_regular_metal_fume_exposure?"
    t.boolean  "ever_work_for_6_plus_months_with_regular_pesticide_exposure?"
  end

  create_table "medical_histories", force: :cascade do |t|
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
    t.boolean  "ever_had_hypertension?"
    t.string   "age_when_diagnosed_with_hypertension?"
    t.boolean  "currently_taking_hypertension_medication?"
    t.boolean  "ever_had_TIA?"
    t.string   "age_when_TIA_occurred?"
    t.boolean  "currently_taking_TIA_medication?"
    t.boolean  "ever_had_heart_attack?"
    t.string   "age_when_heart_attack_occurred?"
    t.boolean  "currently_taking_heart_attack_medication?"
    t.boolean  "ever_had_coronary_heart_disease_or_angina?"
    t.string   "age_when_diagnosed_with_coronary_heart_disease_or_angina?"
    t.boolean  "currently_taking_coronary_heart_disease_or_angina_medication?"
    t.boolean  "ever_had_congestive_heart_failure?"
    t.string   "age_when_diagnosed_with_congestive_heart_failure?"
    t.boolean  "currently_taking_congestive_heart_failure_medication?"
    t.boolean  "ever_had_high_cholesterol_or_triglycerides?"
    t.string   "age_when_diagnosed_with_high_cholesterol_or_triglycerides?"
    t.boolean  "currently_taking_high_cholesterol_or_triglycerides_medication?"
    t.boolean  "ever_had_pulmonary_embolism_DVT_or_blood_clots?"
    t.string   "age_when_diagnosed_with_pulmonary_embolism_DVT_or_blood_clots?"
    t.boolean  "currently_taking_pulmonary_embolism_DVT_or_blood_clots_meds?"
    t.boolean  "ever_had_other_vascular_or_circulatory_system_problems?"
    t.string   "age_when_diagnosed_with_other_vascular_or_circulatory_problems?"
    t.boolean  "currently_taking_other_vascular_or_circulatory_system_problems?"
    t.boolean  "ever_had_migraine_headaches?"
    t.string   "age_when_diagnosed_with_migraine_headaches?"
    t.boolean  "currently_taking_migraine_headaches_medication?"
    t.boolean  "ever_had_MCI_or_memory_loss?"
    t.string   "age_when_diagnosed_with_MCI_or_memory_loss?"
    t.boolean  "currently_taking_MCI_or_memory_loss_medication?"
    t.boolean  "ever_had_AD?"
    t.string   "age_when_diagnosed_with_AD?"
    t.boolean  "currently_taking_AD_medication?"
    t.boolean  "ever_had_other_dementia?"
    t.string   "age_when_diagnosed_with_other_dementia?"
    t.boolean  "currently_taking_other_dementia_medication?"
    t.boolean  "had_concussion_or_traumatic_brain_injury_with_unconsciousness?"
    t.string   "age_when_concussion_or_traumatic_brain_injury_occurred?"
    t.boolean  "currently_taking_concussion_or_traumatic_brain_injury_meds?"
    t.boolean  "ever_had_spinal_cord_injury_or_impairment?"
    t.string   "age_when_spinal_cord_injury_or_impairment_occurred?"
    t.boolean  "currently_taking_spinal_cord_injury_or_impairment_medication?"
    t.boolean  "ever_had_epilepsy?"
    t.string   "age_when_diagnosed_with_epilepsy?"
    t.boolean  "currently_taking_epilepsy_medication?"
    t.boolean  "ever_had_parkinsons?"
    t.string   "age_when_diagnosed_with_parkinsons?"
    t.boolean  "currently_taking_parkinsons_medication?"
    t.boolean  "ever_had_ALS?"
    t.string   "age_when_diagnosed_with_ALS?"
    t.boolean  "currently_taking_ALS_medication?"
    t.boolean  "ever_had_MS?"
    t.string   "age_when_diagnosed_with_MS?"
    t.boolean  "currently_taking_MS_medication?"
    t.boolean  "ever_had_other_nervous_system_problems?"
    t.string   "age_when_diagnosed_with_other_nervous_system_problems?"
    t.boolean  "currently_taking_medication_for_other_nervous_system_problems?"
    t.boolean  "ever_had_PTSD?"
    t.boolean  "ever_had_depression_or_bipolar_disorder?"
    t.boolean  "ever_had_schizophrenia?"
    t.boolean  "ever_had_other_mental_health_disorder?"
    t.boolean  "ever_had_tuberculosis?"
    t.boolean  "ever_had_hepatitis_B_or_C?"
    t.boolean  "ever_had_HIV_or_AIDS?"
    t.boolean  "ever_had_breast_cancer?"
    t.boolean  "ever_had_colon_or_rectal_cancer?"
    t.boolean  "ever_had_lung_cancer?"
    t.boolean  "ever_had_prostate_cancer?"
    t.boolean  "ever_had_melanoma?"
    t.boolean  "ever_had_other_skin_cancer?"
    t.boolean  "ever_had_leukemia?"
    t.boolean  "ever_had_lymphoma?"
    t.boolean  "ever_had_other_cancer?"
    t.boolean  "ever_had_kidney_disease_without_dialysis?"
    t.boolean  "ever_had_kidney_disease_with_dialysis?"
    t.boolean  "ever_had_chronic_lung_disease?"
    t.boolean  "ever_had_sleep_apnea?"
    t.boolean  "ever_had_thyroid_problems?"
    t.boolean  "ever_had_diabetes?"
    t.boolean  "ever_had_vision_problems_that_interfered_with_daily_stuff?"
    t.boolean  "ever_had_physical_disabilities_that_interfered_with_daily_stuff"
  end

  create_table "medication_and_maintenance_rxes", force: :cascade do |t|
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.boolean  "currently_taking_Coumadin_Warfarin_or_anti_coagulants?"
    t.boolean  "currently_taking_other_rx_medications?"
  end

  create_table "memory_impairments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "time_to_read_category_task_instructions"
    t.integer  "number_of_clicks_to_end_of_category_task"
    t.integer  "number_of_correct_clicks_checkers"
    t.integer  "number_of_incorrect_clicks_checkers"
    t.integer  "number_of_correct_clicks_saucer"
    t.integer  "number_of_incorrect_clicks_saucer"
    t.integer  "number_of_correct_clicks_telegram"
    t.integer  "number_of_incorrect_clicks_telegram"
    t.integer  "number_of_correct_clicks_red_cross"
    t.integer  "number_of_incorrect_clicks_red_cross"
    t.integer  "time_to_end_of_category_task"
    t.string   "category_task_clicktimes"
    t.boolean  "category_task_successfully_completed?"
    t.integer  "time_to_end_of_recall_task"
    t.integer  "number_of_correct_answers_that_were_mistyped"
    t.integer  "number_of_incorrect_answers"
    t.boolean  "recall_task_successfully_completed?"
    t.integer  "points",                                       default: 0
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.integer  "game_launch_timestamp",                        default: 0
    t.string   "clicktimes"
    t.integer  "category_task_completion_timestamp"
  end

  create_table "references", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",                             default: "email", null: false
    t.string   "uid",                                  default: "",      null: false
    t.string   "encrypted_password",                   default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total_correct_flanker_guesses",        default: 0,       null: false
    t.integer  "total_incorrect_flanker_guesses",      default: 0,       null: false
    t.integer  "flanker_games_played",                 default: 0,       null: false
    t.integer  "total_correct_digit_symbol_guesses",   default: 0
    t.integer  "total_incorrect_digit_symbol_guesses", default: 0
    t.integer  "digit_symbol_games_played",            default: 0
    t.integer  "total_memory_impairment_points",       default: 0
    t.integer  "memory_impairment_games_played",       default: 0
    t.boolean  "transgender?"
    t.string   "race"
    t.boolean  "hispanic_or_latino?"
    t.string   "education_level"
    t.string   "married?"
    t.boolean  "employed?"
    t.integer  "headcount_in_household"
    t.integer  "total_pretax_household_income"
    t.integer  "height"
    t.integer  "weight"
    t.string   "writing_hand"
    t.string   "gender"
    t.string   "emory_patient?"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree

end
