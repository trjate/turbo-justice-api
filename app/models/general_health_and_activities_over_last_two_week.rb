class GeneralHealthAndActivitiesOverLastTwoWeek < ActiveRecord::Base
  belongs_to :user
  validates :user_id, uniqueness: true

  def add_general_health_and_activity_data_over_last_two_weeks!(params)

     self.update(

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

  end
end
