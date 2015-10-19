class AddFlankerGamesPlayedToUser < ActiveRecord::Migration
  def change
    add_column :users, :flanker_games_played, :integer, default: 0, null: false
  end
end
