class CreateGeneralHealthAndActivityOverLastTwoWeeks < ActiveRecord::Migration
  def change
    create_table :general_health_and_activities_over_last_two_weeks do |t|
      t.string :little_interest_or_pleasure_in_doing_things?
      t.string :feeling_down_depressed_or_hopeless?
      t.string :trouble_falling_or_staying_asleep_or_sleeping_too_much?
      t.string :feeling_tired_or_having_little_energy?
      t.string :poor_appetite_or_overeating?
      t.string :feeling_like_a_failure_or_bad_about_yourself?
      t.string :trouble_concentrating_while_reading_or_watching_tv?
      t.string :moving_or_speaking_noticeably_slowly_or_being_extra_fidgety?
      t.string :feeling_nervous_anxious_or_on_edge?
      t.string :being_unable_to_control_worrying?
      t.string :worrying_too_much_about_things?
      t.string :trouble_relaxing?
      t.string :being_so_restless_you_cannot_sit_still?
      t.string :becoming_easily_annoyed_or_irritable?
      t.string :feeling_afraid_something_bad_might_happen?
      t.timestamps null: false
    end
  end
end
