class DigitSymbolsController < ApplicationController
    before_action :set_digit_symbol_id, only: [:show,:destroy,:update]
  	before_action :authenticate_user!

    # Get JSON data of all games of digit_symbol of all users
  	def index
  		@digit_symbols = DigitSymbol.all
  		render json: @digit_symbols
  	end

    def create
      @digit_symbol = DigitSymbol.new(digit_symbol_params)
      @digit_symbol.user_id = current_user.id

      if @digit_symbol.save
         @digit_symbol.save_digit_symbol_data!(params)

         render json: @digit_symbol,
                status: :ok
      else
         render json: { errors: @digit_symbol.errors.full_messages },
                status: :unprocessable_entity
      end
    end

    def show
      render json: @digit_symbol
    end

  private

    def digit_symbol_params
      params.permit(:correct_guesses, :incorrect_guesses, :clicktimes)
    end

    def set_digit_symbol_id
      @digit_symbol = DigitSymbol.find(params[:id])
    end


end
