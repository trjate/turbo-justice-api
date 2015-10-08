class FlankerSerializer < ActiveModel::Serializer
  attributes :correct_guesses, :incorrect_guesses

  belongs_to :user
end
