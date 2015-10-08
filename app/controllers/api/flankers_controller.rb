class Api::FlankersController < BaseController
  before_action :set_flanker_id, only: [:show,:destroy,:update]
	before_action :authenticate_user!

	def index
		@flankers = Flanker.all
		render json: @flankers
	end

  def create
    @flanker = Flanker.new(flanker_params)
    @flanker.user_id = current_user.idc
  end

  def show
    render json: @flanker
  end


private

  def flanker_params
    params.require(:flanker).permit(:correct_guess, :incorrect_guesses)
  end

  def set_flanker_id
    @flanker = Flanker.find(params[:id])
  end
end
