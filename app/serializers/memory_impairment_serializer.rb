class MemoryImpairmentSerializer < ActiveModel::Serializer

  attributes  :id, :user_id, :clicktimes, :memory_impairment_game_launch_timestamp, :time_to_read_category_task_instructions, :number_of_clicks_to_end_of_category_task,
              :number_of_correct_clicks_checkers, :number_of_incorrect_clicks_checkers,
              :number_of_correct_clicks_saucer, :number_of_incorrect_clicks_saucer,
              :number_of_correct_clicks_telegram, :number_of_incorrect_clicks_telegram,
              :number_of_correct_clicks_red_cross, :number_of_incorrect_clicks_red_cross,
              :time_to_end_of_category_task, :category_task_clicktimes,
              :category_task_successfully_completed?, :time_to_end_of_recall_task,
              :number_of_correct_answers_that_were_mistyped, :number_of_incorrect_answers,
              :recall_task_successfully_completed?, :points

end
