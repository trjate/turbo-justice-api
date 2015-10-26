class FlankerSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :correct_guesses, :incorrect_guesses, :clicktimes
end
