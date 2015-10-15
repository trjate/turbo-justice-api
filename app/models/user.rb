class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable, #confirmable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_many :flankers

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  PW_REGEX = /\A(?-i)(?=^.{8,}$)((?!.*\s)(?=.*[A-Z])(?=.*[a-z]))((?=(.*\d){1,})|(?=(.*\W){1,}))^.*$\z/

  # validates :email, uniqueness: true, presence: true, format: { with: EMAIL_REGEX,
  #                                                       message: "is not a valid email" }
  # validates :password, format: { with: PW_REGEX,
  #                                message: " must be at least 8 characters and include: at least one"\
  #                                         " capital letter, one lower case letter and one number"\
  #                                         " or special character." }

  # def total_flanker_guesses
  #   total_flanker_guesses = total_correct_flanker_guesses + total_incorrect_flanker_guesses
  # end
end
