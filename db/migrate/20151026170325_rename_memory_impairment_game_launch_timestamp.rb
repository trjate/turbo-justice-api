class RenameMemoryImpairmentGameLaunchTimestamp < ActiveRecord::Migration
  def change
    rename_column :memory_impairments, :memory_impairment_game_launch_timestamp, :game_launch_timestamp
  end
end
