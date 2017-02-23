class StoreController < ApplicationController

  before_action :set_dates, only: [:main, :index, :buket]

  def main
    @products = Product.all
    render('main')
  end

  def index
    @products = Product.all
    if session[:cart_id]
      ses1 = session[:cart_id]
      @path = cart_path(ses1)
    else
      @path = carts_path
    end
  end

  def buket
    @product = Product.find(params[:id])

    if session[:cart_id]
      ses1 = session[:cart_id]
      @path = cart_path(ses1)
    else
      @path = carts_path
    end
  end

  def set_dates
    @dates = (Date.today..27.days.from_now).map{ |date| date}
  end


end
