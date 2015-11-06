class Reference < ActiveRecord::Base
  belongs_to :user
  validates :user_id, uniqueness: true

  def add_references!(params)

   self.update(

     relationship:
     params[:relationship],

     first_name:
     params[:first_name],

     last_name:
     params[:last_name],

     email:
     params[:email],

     contact_number:
     params[:contact_number])

 end
end
