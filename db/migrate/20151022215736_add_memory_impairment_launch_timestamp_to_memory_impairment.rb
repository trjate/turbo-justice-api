class AddMemoryImpairmentLaunchTimestampToMemoryImpairment < ActiveRecord::Migration
  def change
    add_column :memory_impairments, :memory_impairment_game_launch_timestamp, :integer
  end
end
