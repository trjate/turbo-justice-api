class CreateActivitiesAndHabits < ActiveRecord::Migration
  def change
    create_table :activities_and_habits do |t|
      t.string :frequency_of_10_plus_minute_nonstop_walks_outside
      t.string :length_of_10_plus_minute_nonstop_walks_outside
      t.string :usual_walking_speed?
      t.string :frequency_of_nonwalking_moderate_or_strenuous_exercise
      t.string :length_of_nonwalking_moderate_or_strenuous_exercise
      t.string :frequency_of_mild_exercise
      t.string :length_of_mild_exercise
      t.string :frequency_of_reading_newspaper_last_year
      t.string :frequency_of_reading_magazines_last_year
      t.string :frequency_of_reading_books_last_year
      t.string :frequency_of_writing_letters_or_sending_emails_last_year
      t.string :frequency_of_playing_games_or_solving_puzzles_last_year
      t.boolean :ever_had_music_instruction_or_training?
      t.timestamps null: false
    end
  end
end
