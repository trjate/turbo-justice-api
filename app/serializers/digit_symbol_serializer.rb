class DigitSymbolSerializer < ActiveModel::Serializer
  attributes :id, :correct_guesses, :incorrect_guesses, :user_id, :clicktimes
end
