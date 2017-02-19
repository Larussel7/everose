class OrdersController < ApplicationController

  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :set_order, only: [:show, :edit, :update, :destroy, :when, :when_update]

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
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(@cart)
    if @order.save
      redirect_to(when_order_path(@order))
    else
      render("delivery")
    end
  end

  def when
  end

  def update
    if @order.update_attributes(order_params)
      redirect_to(extra_order_path(@order))
    else
      render("when")
    end
  end

  def extra
  end

  def note
  end

  def payment
  end

  private
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:first_name, :last_name, :company, :phone_number, :address, :address_apartment, :email, :date, :time, :reason_sending, :note_from, :note_to, :note, :special_instruction, :pay_type)
  end



end
