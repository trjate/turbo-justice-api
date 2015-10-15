class UserSerializer < ActiveModel::Serializer
  attributes :id, :uid, :total_correct_flanker_guesses, :total_incorrect_flanker_guesses, :flanker_games_played
end
