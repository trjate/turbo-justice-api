class MedicationAndMaintenanceRx < ActiveRecord::Base
  belongs_to :user
  validates :user_id, uniqueness: true

  def add_medication_and_maintenance_rx_data!(params)

   self.update(

     currently_taking_Coumadin_Warfarin_or_anti_coagulants?:
     params[:currently_taking_Coumadin_Warfarin_or_anti_coagulants?],

     currently_taking_other_rx_medications?:
     params[:currently_taking_other_rx_medications?])

 end
end
