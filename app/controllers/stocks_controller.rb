class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock == nil
        # respond_to do |format|
          flash.now[:alert] = "Symbol not found! Please enter a valid sybmol."
          # format.js { render partial: 'users/result' }
        # end
      end
    else
      flash.now[:alert] = "You didn't enter anything! Please enter a sybmol to search."
      # format.js { render partial: 'users/result' }
    end
  end
end
