class UserSerializer < ActiveModel::Serializer
  attributes :id, :uid, :total_flanker_guesses
end
