class MedicationAndMaintenanceRx < ActiveRecord::Base
  belongs_to :user

  def add_medication_and_maintenance_rx_data!(params)

   @user.medication_and_maintenance_rx.update(

     currently_taking_Coumadin_Warfarin_or_anti_coagulants?:
     params[:currently_taking_Coumadin_Warfarin_or_anti_coagulants?],

     currently_taking_other_rx_medications?:
     params[:currently_taking_other_rx_medications?])

 end
end
