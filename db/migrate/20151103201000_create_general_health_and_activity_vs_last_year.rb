class CreateGeneralHealthAndActivityVsLastYear < ActiveRecord::Migration
  def change
    create_table :general_health_and_activity_vs_last_years do |t|
      t.string :substantially_declined_memory?, :string
      t.string :others_tell_that_you_repeat_questions?, :string
      t.string :misplace_things_more_often?, :string
      t.string :rely_more_on_written_reminders?, :string
      t.string :need_more_help_to_remember_appointments_or_holidays?, :string
      t.string :have_more_trouble_recalling_names_finding_right_word_or_completing_sentences?, :string
      t.string :have_more_trouble_driving?, :string
      t.string :have_difficulty_managing_money?, :string
      t.string :less_involved_in_social_activities?, :string
      t.string :work_performance_declined_significantly?, :string
      t.string :have_more_trouble_following_news_book_plots_movies_or_shows?, :string
      t.string :activities_that_are_substantially_more_difficult?, :string
      t.string :more_apt_to_get_lost_in_another_city?, :string
      t.string :more_difficulty_using_household_appliances?, :string

            t.timestamps null: false
    end
  end
end
