class DeliveriesController < ApplicationController

  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :set_dates, only: [:new]

  def new
    if @cart.line_items.empty?
      redirect_to store_index_path, notice: "Ваша корзина пуста"
      return
    end

    @delivery = Delivery.new
    render('delivery')
  end

  def create
    @delivery = Delivery.new(delivery_params)
    @order = Order.create()
    @order.delivery = @delivery
    @order.add_line_items_from_cart(@cart)
    if @delivery.save
      redirect_to(new_order_when_path(@order))
    else
      render("delivery")
    end
  end


  private
  def delivery_params
    params.require(:delivery).permit(:first_name, :last_name, :company, :phone_number, :address, :address_apartment)
  end

  def set_order
    @order = Order.find(params[:id])
  end

  def set_dates
    @dates = (Date.today..27.days.from_now).map{ |date| date}
  end

end
