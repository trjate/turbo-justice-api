class FlankerSerializer < ActiveModel::Serializer
  attributes :id, :correct_guesses, :incorrect_guesses, :user_id, :click_times
end
