class StoreController < ApplicationController

  def main
    @products = Product.order(:id)
    render('main')
  end

  def index
    @products = Product.all
  end

  def buket
    @products = Product.find(params[:id])
  end

  def update
  end
end
