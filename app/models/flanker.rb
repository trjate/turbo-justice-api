class Flanker < ActiveRecord::Base
  belongs_to :user
  validates :correct_guesses, :incorrect_guesses, :user_id, presence: true

  def add_flanker_guesses_to_user!
    x = self.user.total_correct_flanker_guesses
    y = self.user.total_incorrect_flanker_guesses

    self.user.update(total_correct_flanker_guesses: x + self.correct_guesses,
                     total_incorrect_flanker_guesses: y + self.incorrect_guesses)
  end

  def update_flanker_games_played!
    i = self.user
    i.update(flanker_games_played: i.flanker_games_played + 1)
  end

end
