class Job < ActiveRecord::Base
  belongs_to :user
  validates :user_id, uniqueness: true

  def add_job_data!(params)

   self.update(

     ever_work_for_6_plus_months_with_regular_solvent_exposure?:
     params[:ever_work_for_6_plus_months_with_regular_solvent_exposure?],

     ever_work_for_6_plus_months_with_regular_metal_fume_exposure?:
     params[:ever_work_for_6_plus_months_with_regular_metal_fume_exposure?],

     ever_work_for_6_plus_months_with_regular_pesticide_exposure?:
     params[:ever_work_for_6_plus_months_with_regular_pesticide_exposure?])

  end
end
