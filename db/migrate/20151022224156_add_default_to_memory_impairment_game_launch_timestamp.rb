class AddDefaultToMemoryImpairmentGameLaunchTimestamp < ActiveRecord::Migration
  def change
    change_column :memory_impairments, :memory_impairment_game_launch_timestamp, :integer, default: 0
  end
end
