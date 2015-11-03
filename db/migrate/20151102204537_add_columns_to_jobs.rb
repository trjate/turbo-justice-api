class AddColumnsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :ever_work_job_for_6_plus_months_with_regular_solvent_exposure?, :boolean
    add_column :jobs, :ever_work_job_for_6_plus_months_with_regular_metal_fume_exposure?, :boolean
    add_column :jobs, :ever_work_job_for_6_plus_months_with_regular_pesticide_exposure?, :boolean
  end
end
