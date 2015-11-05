class GeneralHealthAndActivityVsLastYearSerializer < ActiveModel::Serializer

  attributes  :id,
              :user_id,
              :substantially_declined_memory?,
              :others_tell_that_you_repeat_questions?,
              :misplace_things_more_often?,
              :rely_more_on_written_reminders?,
              :need_more_help_to_remember_appointments_or_holidays?,
              :have_more_trouble_recalling_names_or_finding_right_word?,
              :have_more_trouble_driving?,
              :have_difficulty_managing_money?,
              :less_involved_in_social_activities?,
              :work_performance_declined_significantly?,
              :have_more_trouble_following_news_book_plots_movies_or_shows?,
              :activities_that_are_substantially_more_difficult?,
              :more_apt_to_get_lost_in_another_city?,
              :more_difficulty_using_household_appliances?

end
