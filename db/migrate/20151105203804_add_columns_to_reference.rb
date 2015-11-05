class AddColumnsToReference < ActiveRecord::Migration
  def change
    add_column :references, :relationship, :string
    add_column :references, :first_name, :string
    add_column :references, :last_name, :string
    add_column :references, :email, :string
    add_column :references, :contact_number, :string
  end
end
