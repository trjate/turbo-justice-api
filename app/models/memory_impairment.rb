class MemoryImpairment < ActiveRecord::Base
  belongs_to :user
  validates :user_id, :points, presence: true
  serialize :clicktimes

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

    def calculate_and_save_clicktimes!(params)
      clicktimes = params[:clicktimes].split(",").map(&:to_i)
      self.update(clicktimes: find_difference(clicktimes))
    end

    def calculate_and_save_time_to_read_category_task_instructions!(params)
      launch, first_click = params[:game_launch_timestamp].to_i,
                            params[:clicktimes].split(",").map(&:to_i).first

      self.update(time_to_read_category_task_instructions: first_click - launch)
    end

# NUMBER OF CLICKS -1 WHERE TIMESTAMP < TIMESTAMP of category task completion 

    def save_memory_impairment_data!(params)
      self.add_memory_impairment_points_to_user!
      self.update_memory_impairment_games_played!
      self.add_click_data!(params)
      self.calculate_and_save_clicktimes!(params)
      self.calculate_and_save_time_to_read_category_task_instructions!(params)
    end

    private

    def find_difference(cts_array)
       cts_array.each_with_index.map {|x,i| cts_array[i+1] - x unless i == cts_array.length - 1 }.compact
    end

    ## Note: time_to_read_category_task_instructions is defined as the time between launching the
    ## memory impairment game and starting the game.

end
