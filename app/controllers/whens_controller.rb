class WhensController < ApplicationController

  def new
    @when = When.new
    render('when')
  end

  def create
    @order = Order.find(params[:order_id])
    @when = When.new(when_params)
    @order.when = @when

    if @when.save
      redirect_to(store_index_path)
    else
      render("when")
    end
  end

  private
  def when_params
    params.require(:when).permit(:date, :time)
  end

end
