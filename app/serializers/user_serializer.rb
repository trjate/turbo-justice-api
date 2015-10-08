class UserSerializer < ActiveModel::Serializer
  attributes :id, :provider, :uid, :tokens, :total_flanker_guesses
end
