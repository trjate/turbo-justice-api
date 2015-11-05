class AddFamilyQuestionColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :biological_mother_known?, :boolean
    add_column :users, :biological_father_known?, :boolean
    add_column :users, :has_biological_siblings?, :boolean
  end
end
