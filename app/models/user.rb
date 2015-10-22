class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable, #confirmable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_many :flankers
  has_many :digit_symbols
  has_many :memory_impairments

end
