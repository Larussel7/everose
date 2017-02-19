class StoreController < ApplicationController

  def main
    @products = Product.order(:id)
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
  end

  def update
  end
end
