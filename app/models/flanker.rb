class Flanker < ActiveRecord::Base
  belongs_to :user
  validates :correct_guesses, :incorrect_guesses, :user_id, presence: true
end
