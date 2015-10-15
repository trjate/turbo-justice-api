class ApplicationController < ActionController::API

  include ActionController::Serialization
  include DeviseTokenAuth::Concerns::SetUserByToken

  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  def record_not_found
  	flash[:notice] = "Sorry - that resource cannot be found!"
  end
end
