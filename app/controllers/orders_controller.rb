class OrdersController < ApplicationController

  include CurrentCart
  before_action :set_cart, only: [:new, :create]


  def new
    if @cart.line_items.empty?
      redirect_to store_url, notice: "Ваша корзина пуста"
      return
    end
    @order = Order.new
    @order.add_line_items_from_cart(@cart)
    render('delivery')
  end

  def create
    @delivery = Order.new(order_params)
    @delivery.add_line_items_from_cart(@cart)
    if @order.save
      redirect_to(when_order_path(@order))
    else
      render("delivery")
    end
  end


  private
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:first_name, :last_name, :company, :phone_number, :address, :address_apartment, :email, :date, :time, :reason_sending, :note_from, :note_to, :note, :special_instruction, :pay_type)
  end



end
