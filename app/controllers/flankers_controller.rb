class FlankersController < ApplicationController
    before_action :set_flanker_id, only: [:show,:destroy,:update]
  	before_action :authenticate_user!

    # Get JSON data of all games of Flanker of all users
  	def index
  		@flankers = Flanker.all
  		render json: @flankers
  	end

    def create
      @flanker = Flanker.new(flanker_params)
      @flanker.user_id = @current_user.id
      @user = @flanker.user
      @user.update(total_correct_flanker_guesses: params[:total_correct_flanker_guesses],
                   total_incorrect_flanker_guesses: params[:total_incorrect_flanker_guesses])
      if @flanker.save
        render json: @flanker,
          status: :ok
      else
        render json: { errors: @flanker.errors.full_messages },
               status: :unprocessable_entity
      end
    end

    def show
      render json: @flanker
    end


  private

    def flanker_params
      params.permit(:correct_guesses, :incorrect_guesses)
    end

    def set_flanker_id
      @flanker = Flanker.find(params[:id])
    end


end
