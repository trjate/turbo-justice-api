class ActivitiesAndHabitSerializer < ActiveModel::Serializer

  attributes  :id,
              :user_id,
              :frequency_of_10_plus_minute_nonstop_walks_outside,
              :length_of_10_plus_minute_nonstop_walks_outside,
              :usual_walking_speed?,
              :frequency_of_nonwalking_moderate_or_strenuous_exercise,
              :length_of_nonwalking_moderate_or_strenuous_exercise,
              :frequency_of_mild_exercise,
              :length_of_mild_exercise,
              :frequency_of_reading_newspaper_last_year,
              :frequency_of_reading_magazines_last_year,
              :frequency_of_reading_books_last_year,
              :frequency_of_writing_letters_or_sending_emails_last_year,
              :frequency_of_playing_games_or_solving_puzzles_last_year,
              :ever_had_music_instruction_or_training?
end
