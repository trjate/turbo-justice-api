class MemoryImpairment < ActiveRecord::Base
  belongs_to :user
  validates :user_id, :points, presence: true

    def add_memory_impairment_points_to_user!
      x = self.user.total_memory_impairment_points
      self.user.update(total_memory_impairment_points: x + self.points)
    end

    def update_memory_impairment_games_played!
      i = self.user
      i.update(memory_impairment_games_played: i.memory_impairment_games_played + 1)
    end

    def add_click_data!(params)
      clicks = params[:number_of_clicks_to_end_of_category_task],   params[:number_of_correct_clicks_checkers],
               params[:number_of_incorrect_clicks_checkers],        params[:number_of_correct_clicks_saucer],
               params[:number_of_incorrect_clicks_saucer],          params[:number_of_correct_clicks_telegram],
               params[:number_of_incorrect_clicks_telegram],        params[:number_of_correct_clicks_red_cross],
               params[:number_of_incorrect_clicks_red_cross]
    end

    def calculate_and_save_times!(params)
      launch, first_click = params[:memory_impairment_game_launch_timestamp].to_i,
                            params[:clicktimes].split(",").map {|x| x.to_i}.first

      self.update(time_to_read_category_task_instructions:
      set_time_to_read_category_task_instructions(launch,first_click))
    end

    def save_memory_impairment_data!(params)
      self.add_memory_impairment_points_to_user!
      self.update_memory_impairment_games_played!
      self.add_click_data!(params)
      self.calculate_and_save_times!(params)
    end

    private

    def find_difference(cts_array)
       cts_array.each_with_index.map {|x,i| cts_array[i+1] - x unless i == cts_array.length - 1 }.compact
    end

    ## Note: time_to_read_category_task_instructions is defined as the time between launching the
    ## memory impairment game and starting the game.

    def set_time_to_read_category_task_instructions(launch, first_click)
      first_click - launch
    end



end
