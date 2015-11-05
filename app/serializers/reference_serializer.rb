class ReferenceSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :relationship, :first_name, :last_name, :email, :contact_number
end
