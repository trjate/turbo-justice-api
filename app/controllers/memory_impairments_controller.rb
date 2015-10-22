class MemoryImpairmentsController < ApplicationController
    before_action :set_memory_impairment_id, only: [:show,:destroy,:update]
  	before_action :authenticate_user!

    # Get JSON data of all games of memory_impairment of all users
  	def index
  		@memory_impairments = MemoryImpairment.all
  		render json: @memory_impairments
  	end

    def create
      @memory_impairment = MemoryImpairment.new(memory_impairment_params)
      @memory_impairment.user_id = current_user.id

      if @memory_impairment.save
         @memory_impairment.save_memory_impairment_data!(params)

         render json: @memory_impairment,
                status: :ok
      else
         render json: { errors: @memory_impairment.errors.full_messages },
                status: :unprocessable_entity
      end
    end

    def show
      render json: @memory_impairment
    end

  private

    def memory_impairment_params
      params.permit(:time_to_read_category_task_instructions, :number_of_clicks_to_end_of_category_task,
                    :number_of_correct_clicks_checkers, :number_of_incorrect_clicks_checkers,
                    :number_of_correct_clicks_saucer, :number_of_incorrect_clicks_saucer,
                    :number_of_correct_clicks_telegram, :number_of_incorrect_clicks_telegram,
                    :number_of_correct_clicks_red_cross, :number_of_incorrect_clicks_red_cross,
                    :time_to_end_of_category_task, :category_task_clicktimes,
                    :category_task_successfully_completed?, :time_to_end_of_recall_task,
                    :number_of_correct_answers_that_were_mistyped, :number_of_incorrect_answers,
                    :recall_task_successfully_completed?, :points, :memory_impairment_game_launch_timestamp,
                    :clicktimes)
    end

    def set_memory_impairment_id
      @memory_impairment = MemoryImpairment.find(params[:id])
    end

end
