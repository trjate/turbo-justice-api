class UserController < ApplicationController
  before_action :authenticate_user!

# Get all Flanker games of given user
  def index_flanker_games_for_user
    @user = User.find(params[:id])
    @flankers = @user.flankers.all
    render json: @user.flankers,
    status: :ok
  end

  def index_digit_symbol_games_for_user
    @user = User.find(params[:id])
    @digit_symbols = @user.digit_symbols.all
    render json: @user.digit_symbols,
    status: :ok
  end

  def index_memory_impairment_games_for_user
    @user = User.find(params[:id])
    @memory_impairments = @user.memory_impairments.all
    render json: @user.memory_impairments,
    status: :ok

# Show user information for given user
  def show
    @user = User.find(params[:id])
    render json: @user,
    status: :ok
  end

# Get all users
  def index_all_users
    @users = User.all
    render json: @users
  end
end
