class FlankersController < ApplicationController
    before_action :set_flanker_id, only: [:show,:destroy,:update]
  	before_action :authenticate_user!
    before_action :set_headers

  	def index
  		@flankers = current_user.flankers.all
  		render json: @flankers
  	end

    def create

      @flanker = Flanker.new(flanker_params)

      @flanker.user_id = @current_user.id

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

    def set_headers
      client = response.headers['client']
      access_token = response.headers['access_token']
    end


end
