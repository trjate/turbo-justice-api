class DigitSymbol < ActiveRecord::Base
  belongs_to :user
  validates :correct_guesses, :incorrect_guesses, :user_id, presence: true
  serialize :clicktimes

  #attachment :digit_symbol, extension: "csv"

  def add_digit_symbol_guesses_to_user!
    x = self.user.total_correct_digit_symbol_guesses
    y = self.user.total_incorrect_digit_symbol_guesses

    self.user.update(total_correct_digit_symbol_guesses: x + self.correct_guesses,
                     total_incorrect_digit_symbol_guesses: y + self.incorrect_guesses)
  end

  def update_digit_symbol_games_played!
    i = self.user
    i.update(digit_symbol_games_played: i.digit_symbol_games_played + 1)
  end

  def convert_click_timestamps_to_seconds


  end

  def save_digit_symbol_data!
    self.add_digit_symbol_guesses_to_user!
    self.update_digit_symbol_games_played!
  #  self.convert_click_timestamps_to_seconds!
  #  self.set_click_times_url!
  end
  #
  # def set_clicktimes_url!
  #   self.update(clicktimes_url: "https://#{ENV['S3_BUCKET']}.s3-#{ENV['AWS_REGION']}.amazonaws.com/store/#{self.digit_symbol_id}")
  # end
end
