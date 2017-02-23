class PaymentsController < ApplicationController

  def new
    @order = Order.find(params[:order_id])
    @total = 0
    @order.line_items.each do |item|
      @total += item.product.price * item.quantity
    end
    @payment = Payment.new
    render('payment')
  end

  def create
    @order = Order.find(params[:order_id])
    @payment = Payment.new(payment_params)
    @order.payment = @payment

    if @payment.save
      flash[:notice] = "Мои поздравления вы купили букет! :)"
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
