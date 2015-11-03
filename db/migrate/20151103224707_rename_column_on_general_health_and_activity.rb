class RenameColumnOnGeneralHealthAndActivity < ActiveRecord::Migration
  def change
    rename_column :general_health_and_activity_vs_last_years,
    :have_more_trouble_recalling_names_finding_right_word_or_complet,
    :have_more_trouble_recalling_names_or_finding_right_word?
  end
end
