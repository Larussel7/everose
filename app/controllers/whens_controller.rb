class WhensController < ApplicationController

  def new
    @order = Order.find(params[:order_id])
    @dates = (Date.today..26.days.from_now).map{ |date| date}
    @when = When.new
    render('when')
  end

  def create
    @order = Order.find(params[:order_id])
    @when = When.new(when_params)
    @order.when = @when

    if @when.save
      redirect_to(new_order_extra_path(@order))
    else
      render("when")
    end
  end

  private
  def when_params
    params.require(:when).permit(:date, :time)
  end

end
