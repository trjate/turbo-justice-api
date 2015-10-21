class ChangeFlankersClickTimesColumnTypeDefault < ActiveRecord::Migration
  def change
    change_column :flankers, :clicktimes, :string
  end
end
