class PaymentsController < ApplicationController

  def new
    @payment = Payment.new
    render('payment')
  end

  def create
    @order = Order.find(params[:order_id])
    @payment = Payment.new(payment_params)
    @order.payment = @payment

    if @payment.save
      redirect_to(store_index_path)
    else
      render("payment")
    end
  end

  private
  def payment_params
    params.require(:payment).permit(:pay_type)
  end

end
