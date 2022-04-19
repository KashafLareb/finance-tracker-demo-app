class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock == nil
        flash[:alert] = "Symbol not found! Please enter a valid sybmol."
      end
    else
      flash[:alert] = "You didn't enter anything! Please enter a sybmol to search."
    end
    render 'users/my_portfolio'
  end
end
