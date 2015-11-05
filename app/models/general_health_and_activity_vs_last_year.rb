class GeneralHealthAndActivityVsLastYear < ActiveRecord::Base
  belongs_to :user

  def add_general_health_and_activity_data_vs_last_year!(params)

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

   end
end
