class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable, #confirmable,
          :recoverable, :rememberable, :omniauthable, :trackable, :validatable
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

  # validates :weight, format: { with: WEIGHT_REGEX,     #{ errors: @user.weight.errors.full_messages }
    #                           message: " must be an integer less than 1000" }

   def add_attributes_to_users!(params)

      self.update(gender:                        params[:gender],
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
                  writing_hand:                  params[:writing_hand],
                  biological_mother_known?:      params[:biological_mother_known?],
                  biological_father_known?:      params[:biological_father_known?],
                  has_biological_siblings?:      params[:has_biological_siblings?])

   end

   def check_for_family

     if self.biological_mother_known? ||
        self.biological_father_known? ||
        self.has_biological_siblings? == true
        FamilyQuestion.new(user_id: self.id)
     end

   end

   def add_remaining_user_data!(params)

     self.activities_and_habit.add_activities_and_habits!(params)

     self.general_health_and_activities_over_last_two_week.
     add_general_health_and_activity_data_over_last_two_weeks!(params)

     self.general_health_and_activity.add_general_health_and_activity_data!(params)

     self.general_health_and_activity_vs_last_year.add_general_health_and_activity_data_vs_last_year!(params)

     self.job.add_job_data!(params)

     self.medical_history.add_medical_history_data!(params)

     self.medication_and_maintenance_rx.add_medication_and_maintenance_rx_data!(params)

     #self.reference.add_references!(params)
   end



end
