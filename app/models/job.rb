class Job < ActiveRecord::Base
  belongs_to :user

  def add_job_data!(params)

   @user.job.update(

     ever_work_for_6_plus_months_with_regular_solvent_exposure?:
     params[:ever_work_for_6_plus_months_with_regular_solvent_exposure?],

     ever_work_for_6_plus_months_with_regular_metal_fume_exposure?:
     params[:ever_work_for_6_plus_months_with_regular_metal_fume_exposure?],

     ever_work_for_6_plus_months_with_regular_pesticide_exposure?:
     params[:ever_work_for_6_plus_months_with_regular_pesticide_exposure?])

  end
end
