class MedicationAndMaintenanceRxSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :currently_taking_Coumadin_Warfarin_or_anti_coagulants?,
             :currently_taking_other_rx_medications?
end
