class UserSerializer < ActiveModel::Serializer
  attributes :id, :uid, :total_correct_flanker_guesses, :total_incorrect_flanker_guesses, :flanker_games_played, :total_correct_digit_symbol_guesses, :total_incorrect_digit_symbol_guesses, :digit_symbol_games_played
end
