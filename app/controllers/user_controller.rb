class UserController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_id, except: [:create, :new, :index]

# Get all Flanker games of given user
  def index_flanker_games_for_user
    @flankers = @user.flankers.all
    render json: @user.flankers,
    status: :ok
  end

  def index_digit_symbol_games_for_user
    @digit_symbols = @user.digit_symbols.all
    render json: @user.digit_symbols,
    status: :ok
  end

  def index_memory_impairment_games_for_user
    @memory_impairments = @user.memory_impairments.all
    render json: @user.memory_impairments,
    status: :ok
  end

# Show user information for given user
  def show
    render json: @user,
    status: :ok
  end

# Get all users
  def index_all_users
    @users = User.all
    render json: @users,
    status: :ok
  end

# Update user with survey data points
  def update
    if @user.save
      @user.add_attributes_to_users!(params)
      render json: @user,
      status: :ok
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.permit()
    end

    def set_user_id
      @user = User.find(params[:id])
    end


end
