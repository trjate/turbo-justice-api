class CreateMemoryImpairments < ActiveRecord::Migration
  def change
    create_table :memory_impairments do |t|
      t.integer :user_id
      t.integer :time_to_read_category_task_instructions
      t.integer :number_of_clicks_to_end_of_category_task
      t.integer :number_of_correct_clicks_checkers
      t.integer :number_of_incorrect_clicks_checkers
      t.integer :number_of_correct_clicks_saucer
      t.integer :number_of_incorrect_clicks_saucer
      t.integer :number_of_correct_clicks_telegram
      t.integer :number_of_incorrect_clicks_telegram
      t.integer :number_of_correct_clicks_red_cross
      t.integer :number_of_incorrect_clicks_red_cross
      t.integer :time_to_end_of_category_task
      t.string  :category_task_clicktimes
      t.boolean :category_task_successfully_completed?
      ##Data for intermediate game goes here
      t.integer :time_to_end_of_recall_task
      t.integer :number_of_correct_answers_that_were_mistyped
      t.integer :number_of_incorrect_answers
      t.boolean :recall_task_successfully_completed?
      t.integer :points, default: 0




      t.timestamps null: false
    end
  end
end
