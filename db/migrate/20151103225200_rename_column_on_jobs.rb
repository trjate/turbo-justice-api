class RenameColumnOnJobs < ActiveRecord::Migration
  def change
    rename_column :jobs, :ever_work_job_for_6_plus_months_with_regular_metal_fume_exposur,
    :ever_work_for_6_plus_months_with_regular_metal_fume_exposure?
    rename_column :jobs, :ever_work_job_for_6_plus_months_with_regular_solvent_exposure?,
    :ever_work_for_6_plus_months_with_regular_solvent_exposure?
    rename_column :jobs, :ever_work_job_for_6_plus_months_with_regular_pesticide_exposure,
    :ever_work_for_6_plus_months_with_regular_pesticide_exposure?
  end
end
