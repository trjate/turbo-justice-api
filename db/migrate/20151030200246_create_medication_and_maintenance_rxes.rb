class CreateMedicationAndMaintenanceRxes < ActiveRecord::Migration
  def change
    create_table :medication_and_maintenance_rxes do |t|

      t.timestamps null: false
    end
  end
end
