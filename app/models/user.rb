class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable, #confirmable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_many :flankers
  has_many :digit_symbols
  has_many :memory_impairments
  has_one  :activity_and_habit
  has_one  :family_question
  has_one  :general_health_and_activity
  has_one  :job
  has_one  :medical_history
  has_one  :medication_and_maintenance_rx

  WEIGHT_REGEX = /\A(?-i)(?=^.{8,}$)((?!.*\s)(?=.*[A-Z])(?=.*[a-z]))((?=(.*\d){1,})|(?=(.*\W){1,}))^.*$\z/

  validates :weight, format: { with: WEIGHT_REGEX,     #{ errors: @user.weight.errors.full_messages }
                               message: " must be an integer less than 1000" }

   def add_attributes_to_users!
     @user.update(gender: params[:gender], emory_patient?: params[:emory_patient?]
                  transgender?: params[:transgender?], race: params[:race],
                  hispanic_or_latino?: params[:hispanic_or_latino?],
                  education_level: params[:education_level], married?: params[:married?],
                  employed?: params[:employed?], headcount_in_household: params[:headcount_in_household],
                  total_pretax_household_income: params[:total_pretax_household_income],
                  height: params[:height], weight: params[:weight],
                  writing_hand:, params[:writing_hand])
   end



end
