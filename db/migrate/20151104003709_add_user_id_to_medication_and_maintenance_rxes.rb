class AddUserIdToMedicationAndMaintenanceRxes < ActiveRecord::Migration
  def change
    add_column :medication_and_maintenance_rxes, :user_id, :integer
  end
end
