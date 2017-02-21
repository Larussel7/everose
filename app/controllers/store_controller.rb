class StoreController < ApplicationController

  def main

    @dates = (1.month.ago.to_date..Date.today).map{ |date| date}

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

  def update
  end




end
