class ApplicationController < ActionController::API
  include ActionController::Serialization
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  def record_not_found
  	flash[:notice] = "Sorry - that resource cannot be found!"
  end

end
