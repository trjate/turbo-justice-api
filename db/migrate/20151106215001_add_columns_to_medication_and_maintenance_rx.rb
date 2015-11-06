class AddColumnsToMedicationAndMaintenanceRx < ActiveRecord::Migration
  def change
    add_column :medication_and_maintenance_rxes,
    :currently_taking_Coumadin_Warfarin_or_anti_coagulants?, :boolean
    add_column :medication_and_maintenance_rxes,
    :currently_taking_other_rx_medications?, :boolean
  end
end
